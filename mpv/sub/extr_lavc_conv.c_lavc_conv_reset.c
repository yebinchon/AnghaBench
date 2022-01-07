
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lavc_conv {int avctx; } ;


 int avcodec_flush_buffers (int ) ;

void lavc_conv_reset(struct lavc_conv *priv)
{
    avcodec_flush_buffers(priv->avctx);
}
