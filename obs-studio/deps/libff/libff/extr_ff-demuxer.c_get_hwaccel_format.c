
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVCodecContext {int dummy; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_PIX_FMT_YUV420P ;

enum AVPixelFormat get_hwaccel_format(struct AVCodecContext *s,
                                      const enum AVPixelFormat *fmt)
{
 (void)s;
 (void)fmt;


 return AV_PIX_FMT_YUV420P;
}
