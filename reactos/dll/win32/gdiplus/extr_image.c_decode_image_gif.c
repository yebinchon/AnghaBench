
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int * palette; } ;
typedef int IWICBitmapDecoder ;
typedef int IStream ;
typedef int HRESULT ;
typedef scalar_t__ GpStatus ;
typedef TYPE_1__ GpImage ;


 scalar_t__ FAILED (int ) ;
 int GUID_ContainerFormatGif ;
 int IWICBitmapDecoder_GetFrameCount (int *,int*) ;
 int IWICBitmapDecoder_Release (int *) ;
 scalar_t__ Ok ;
 scalar_t__ decode_frame_wic (int *,int,int ,int ,TYPE_1__**) ;
 int gif_metadata_reader ;
 int heap_free (int *) ;
 scalar_t__ hresult_to_status (int ) ;
 scalar_t__ initialize_decoder_wic (int *,int *,int **) ;

__attribute__((used)) static GpStatus decode_image_gif(IStream* stream, GpImage **image)
{
    IWICBitmapDecoder *decoder;
    UINT frame_count;
    GpStatus status;
    HRESULT hr;

    status = initialize_decoder_wic(stream, &GUID_ContainerFormatGif, &decoder);
    if(status != Ok)
        return status;

    hr = IWICBitmapDecoder_GetFrameCount(decoder, &frame_count);
    if(FAILED(hr))
        return hresult_to_status(hr);

    status = decode_frame_wic(decoder, frame_count > 1, 0, gif_metadata_reader, image);
    IWICBitmapDecoder_Release(decoder);
    if(status != Ok)
        return status;

    if(frame_count > 1) {
        heap_free((*image)->palette);
        (*image)->palette = ((void*)0);
    }
    return Ok;
}
