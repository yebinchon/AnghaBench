
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lavc_conv {char* extradata; } ;



char *lavc_conv_get_extradata(struct lavc_conv *priv)
{
    return priv->extradata;
}
