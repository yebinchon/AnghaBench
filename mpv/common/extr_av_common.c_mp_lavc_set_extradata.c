
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extradata_size; int extradata; } ;
typedef TYPE_1__ AVCodecContext ;


 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int av_free (int ) ;
 int av_mallocz (scalar_t__) ;
 int memcpy (int ,void*,int) ;

int mp_lavc_set_extradata(AVCodecContext *avctx, void *ptr, int size)
{
    if (size) {
        av_free(avctx->extradata);
        avctx->extradata_size = 0;
        avctx->extradata = av_mallocz(size + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!avctx->extradata)
            return -1;
        avctx->extradata_size = size;
        memcpy(avctx->extradata, ptr, size);
    }
    return 0;
}
