
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct mp_image {int dummy; } ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef int AVCodecContext ;
typedef int AVCodec ;


 int AV_CODEC_ID_PNG ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 scalar_t__ av_new_packet (TYPE_1__*,size_t) ;
 TYPE_1__* av_packet_alloc () ;
 int av_packet_free (TYPE_1__**) ;
 int * avcodec_alloc_context3 (int const*) ;
 int * avcodec_find_decoder (int ) ;
 int avcodec_free_context (int **) ;
 scalar_t__ avcodec_open2 (int *,int const*,int *) ;
 scalar_t__ avcodec_receive_frame (int *,int *) ;
 int avcodec_send_packet (int *,TYPE_1__*) ;
 struct mp_image* convert_image (struct mp_image*,int,int *,int ) ;
 int memcpy (int ,void*,size_t) ;
 struct mp_image* mp_image_from_av_frame (int *) ;
 int mp_null_log ;
 int talloc_free (struct mp_image*) ;

struct mp_image *load_image_png_buf(void *buffer, size_t buffer_size, int imgfmt)
{
    const AVCodec *codec = avcodec_find_decoder(AV_CODEC_ID_PNG);
    if (!codec)
        return ((void*)0);

    AVCodecContext *avctx = avcodec_alloc_context3(codec);
    if (!avctx)
        return ((void*)0);

    if (avcodec_open2(avctx, codec, ((void*)0)) < 0) {
        avcodec_free_context(&avctx);
        return ((void*)0);
    }

    AVPacket *pkt = av_packet_alloc();
    if (pkt) {
        if (av_new_packet(pkt, buffer_size) >= 0)
            memcpy(pkt->data, buffer, buffer_size);
    }


    avcodec_send_packet(avctx, pkt);
    avcodec_send_packet(avctx, ((void*)0));

    av_packet_free(&pkt);

    struct mp_image *res = ((void*)0);
    AVFrame *frame = av_frame_alloc();
    if (frame && avcodec_receive_frame(avctx, frame) >= 0) {
        struct mp_image *r = mp_image_from_av_frame(frame);
        if (r)
            res = convert_image(r, imgfmt, ((void*)0), mp_null_log);
        talloc_free(r);
    }
    av_frame_free(&frame);

    avcodec_free_context(&avctx);
    return res;
}
