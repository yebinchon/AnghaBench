
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int metadata_reader_func ;
typedef int REFGUID ;
typedef int IWICBitmapDecoder ;
typedef int IStream ;
typedef scalar_t__ GpStatus ;
typedef int GpImage ;


 int FALSE ;
 int IWICBitmapDecoder_Release (int *) ;
 scalar_t__ Ok ;
 scalar_t__ decode_frame_wic (int *,int ,int ,int ,int **) ;
 scalar_t__ initialize_decoder_wic (int *,int ,int **) ;

__attribute__((used)) static GpStatus decode_image_wic(IStream *stream, REFGUID container,
        metadata_reader_func metadata_reader, GpImage **image)
{
    IWICBitmapDecoder *decoder;
    GpStatus status;

    status = initialize_decoder_wic(stream, container, &decoder);
    if(status != Ok)
        return status;

    status = decode_frame_wic(decoder, FALSE, 0, metadata_reader, image);
    IWICBitmapDecoder_Release(decoder);
    return status;
}
