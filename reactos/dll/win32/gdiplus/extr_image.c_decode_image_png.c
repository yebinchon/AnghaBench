
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IWICBitmapFrameDecode ;
typedef int IWICBitmapDecoder ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ GpStatus ;
typedef int GpImage ;
typedef int GUID ;
typedef int BOOL ;


 int FALSE ;
 int GUID_ContainerFormatPng ;
 int GUID_WICPixelFormat1bppIndexed ;
 int GUID_WICPixelFormat24bppBGR ;
 int GUID_WICPixelFormat2bppIndexed ;
 int GUID_WICPixelFormat4bppIndexed ;
 int GUID_WICPixelFormat8bppGray ;
 int GUID_WICPixelFormat8bppIndexed ;
 scalar_t__ IWICBitmapDecoder_GetFrame (int *,int ,int **) ;
 int IWICBitmapDecoder_Release (int *) ;
 scalar_t__ IWICBitmapFrameDecode_GetPixelFormat (int *,int *) ;
 int IWICBitmapFrameDecode_Release (int *) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 scalar_t__ Ok ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ decode_frame_wic (int *,int ,int ,int ,int **) ;
 scalar_t__ has_png_transparency_chunk (int *) ;
 scalar_t__ hresult_to_status (scalar_t__) ;
 scalar_t__ initialize_decoder_wic (int *,int *,int **) ;
 int png_metadata_reader ;

__attribute__((used)) static GpStatus decode_image_png(IStream* stream, GpImage **image)
{
    IWICBitmapDecoder *decoder;
    IWICBitmapFrameDecode *frame;
    GpStatus status;
    HRESULT hr;
    GUID format;
    BOOL force_conversion = FALSE;

    status = initialize_decoder_wic(stream, &GUID_ContainerFormatPng, &decoder);
    if (status != Ok)
        return status;

    hr = IWICBitmapDecoder_GetFrame(decoder, 0, &frame);
    if (hr == S_OK)
    {
        hr = IWICBitmapFrameDecode_GetPixelFormat(frame, &format);
        if (hr == S_OK)
        {
            if (IsEqualGUID(&format, &GUID_WICPixelFormat8bppGray))
                force_conversion = TRUE;
            else if ((IsEqualGUID(&format, &GUID_WICPixelFormat8bppIndexed) ||
                      IsEqualGUID(&format, &GUID_WICPixelFormat4bppIndexed) ||
                      IsEqualGUID(&format, &GUID_WICPixelFormat2bppIndexed) ||
                      IsEqualGUID(&format, &GUID_WICPixelFormat1bppIndexed) ||
                      IsEqualGUID(&format, &GUID_WICPixelFormat24bppBGR)) &&
                     has_png_transparency_chunk(stream))
                force_conversion = TRUE;

            status = decode_frame_wic(decoder, force_conversion, 0, png_metadata_reader, image);
        }
        else
            status = hresult_to_status(hr);

        IWICBitmapFrameDecode_Release(frame);
    }
    else
        status = hresult_to_status(hr);

    IWICBitmapDecoder_Release(decoder);
    return status;
}
