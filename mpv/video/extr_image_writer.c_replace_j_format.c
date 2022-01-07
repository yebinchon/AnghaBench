
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;





 int AV_PIX_FMT_YUVJ420P ;
 int AV_PIX_FMT_YUVJ422P ;
 int AV_PIX_FMT_YUVJ444P ;

__attribute__((used)) static enum AVPixelFormat replace_j_format(enum AVPixelFormat fmt)
{
    switch (fmt) {
    case 130: return AV_PIX_FMT_YUVJ420P;
    case 129: return AV_PIX_FMT_YUVJ422P;
    case 128: return AV_PIX_FMT_YUVJ444P;
    }
    return fmt;
}
