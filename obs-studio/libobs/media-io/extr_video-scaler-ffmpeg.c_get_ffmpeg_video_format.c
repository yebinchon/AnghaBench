
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_format { ____Placeholder_video_format } video_format ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_PIX_FMT_BGR24 ;
 int AV_PIX_FMT_BGRA ;
 int AV_PIX_FMT_GRAY8 ;
 int AV_PIX_FMT_NONE ;
 int AV_PIX_FMT_NV12 ;
 int AV_PIX_FMT_RGBA ;
 int AV_PIX_FMT_UYVY422 ;
 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV422P ;
 int AV_PIX_FMT_YUV444P ;
 int AV_PIX_FMT_YUVA420P ;
 int AV_PIX_FMT_YUVA422P ;
 int AV_PIX_FMT_YUVA444P ;
 int AV_PIX_FMT_YUYV422 ;
__attribute__((used)) static inline enum AVPixelFormat
get_ffmpeg_video_format(enum video_format format)
{
 switch (format) {
 case 139:
  return AV_PIX_FMT_YUV420P;
 case 134:
  return AV_PIX_FMT_NV12;
 case 129:
  return AV_PIX_FMT_YUYV422;
 case 132:
  return AV_PIX_FMT_UYVY422;
 case 133:
  return AV_PIX_FMT_RGBA;
 case 142:
  return AV_PIX_FMT_BGRA;
 case 141:
  return AV_PIX_FMT_BGRA;
 case 131:
  return AV_PIX_FMT_GRAY8;
 case 136:
  return AV_PIX_FMT_YUV444P;
 case 143:
  return AV_PIX_FMT_BGR24;
 case 138:
  return AV_PIX_FMT_YUV422P;
 case 140:
  return AV_PIX_FMT_YUVA420P;
 case 137:
  return AV_PIX_FMT_YUVA422P;
 case 130:
  return AV_PIX_FMT_YUVA444P;
 case 135:
 case 128:
 case 144:

  return AV_PIX_FMT_NONE;
 }

 return AV_PIX_FMT_NONE;
}
