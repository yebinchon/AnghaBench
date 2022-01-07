
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum video_format { ____Placeholder_video_format } video_format ;


 int CHROMA_CONV (char*,char*,int) ;
 int CHROMA_CONV_FULL (char*,char*,int) ;
 int CHROMA_TEST (char*,int) ;
 int VIDEO_FORMAT_BGRA ;
 int VIDEO_FORMAT_I420 ;
 int VIDEO_FORMAT_I444 ;
 int VIDEO_FORMAT_NV12 ;
 int VIDEO_FORMAT_RGBA ;
 int VIDEO_FORMAT_UYVY ;
 int VIDEO_FORMAT_Y800 ;
 int VIDEO_FORMAT_YUY2 ;
 int VIDEO_FORMAT_YVYU ;

__attribute__((used)) static enum video_format convert_vlc_video_format(char *chroma, bool *full)
{
 *full = 0;
 if (chroma_is(chroma, "RGBA")) return VIDEO_FORMAT_RGBA;
 if (chroma_is(chroma, "BGRA")) return VIDEO_FORMAT_BGRA;


 if (chroma_is(chroma, "NV12")) return VIDEO_FORMAT_NV12;
 if (chroma_is(chroma, "I420")) return VIDEO_FORMAT_I420;
 if (chroma_is(chroma, "IYUV")) return VIDEO_FORMAT_I420;
 do { if (chroma_is(chroma, "NV21")) { *(uint32_t *)chroma = *(uint32_t *)"NV12"; return VIDEO_FORMAT_NV12; } } while (0);
 do { if (chroma_is(chroma, "I422")) { *(uint32_t *)chroma = *(uint32_t *)"NV12"; return VIDEO_FORMAT_NV12; } } while (0);
 do { if (chroma_is(chroma, "Y42B")) { *(uint32_t *)chroma = *(uint32_t *)"NV12"; return VIDEO_FORMAT_NV12; } } while (0);
 do { if (chroma_is(chroma, "YV12")) { *(uint32_t *)chroma = *(uint32_t *)"NV12"; return VIDEO_FORMAT_NV12; } } while (0);
 do { if (chroma_is(chroma, "yv12")) { *(uint32_t *)chroma = *(uint32_t *)"NV12"; return VIDEO_FORMAT_NV12; } } while (0);

 do { *full = 1; do { if (chroma_is(chroma, "J420")) { *(uint32_t *)chroma = *(uint32_t *)"J420"; return VIDEO_FORMAT_I420; } } while (0); } while (0);


 if (chroma_is(chroma, "UYVY")) return VIDEO_FORMAT_UYVY;
 if (chroma_is(chroma, "UYNV")) return VIDEO_FORMAT_UYVY;
 if (chroma_is(chroma, "UYNY")) return VIDEO_FORMAT_UYVY;
 if (chroma_is(chroma, "Y422")) return VIDEO_FORMAT_UYVY;
 if (chroma_is(chroma, "HDYC")) return VIDEO_FORMAT_UYVY;
 if (chroma_is(chroma, "AVUI")) return VIDEO_FORMAT_UYVY;
 if (chroma_is(chroma, "uyv1")) return VIDEO_FORMAT_UYVY;
 if (chroma_is(chroma, "2vuy")) return VIDEO_FORMAT_UYVY;
 if (chroma_is(chroma, "2Vuy")) return VIDEO_FORMAT_UYVY;
 if (chroma_is(chroma, "2Vu1")) return VIDEO_FORMAT_UYVY;

 if (chroma_is(chroma, "YUY2")) return VIDEO_FORMAT_YUY2;
 if (chroma_is(chroma, "YUYV")) return VIDEO_FORMAT_YUY2;
 if (chroma_is(chroma, "YUNV")) return VIDEO_FORMAT_YUY2;
 if (chroma_is(chroma, "V422")) return VIDEO_FORMAT_YUY2;

 if (chroma_is(chroma, "YVYU")) return VIDEO_FORMAT_YVYU;

 do { if (chroma_is(chroma, "v210")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "cyuv")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "CYUV")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "VYUY")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "NV16")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "NV61")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "I410")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "I422")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "Y42B")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "J422")) { *(uint32_t *)chroma = *(uint32_t *)"UYVY"; return VIDEO_FORMAT_UYVY; } } while (0);


 if (chroma_is(chroma, "I444")) return VIDEO_FORMAT_I444;
 do { *full = 1; do { if (chroma_is(chroma, "J444")) { *(uint32_t *)chroma = *(uint32_t *)"RGBA"; return VIDEO_FORMAT_RGBA; } } while (0); } while (0);
 do { if (chroma_is(chroma, "YUVA")) { *(uint32_t *)chroma = *(uint32_t *)"RGBA"; return VIDEO_FORMAT_RGBA; } } while (0);


 do { if (chroma_is(chroma, "I440")) { *(uint32_t *)chroma = *(uint32_t *)"I444"; return VIDEO_FORMAT_I444; } } while (0);
 do { if (chroma_is(chroma, "J440")) { *(uint32_t *)chroma = *(uint32_t *)"I444"; return VIDEO_FORMAT_I444; } } while (0);


 do { if (chroma_is(chroma, "YVU9")) { *(uint32_t *)chroma = *(uint32_t *)"NV12"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "I410")) { *(uint32_t *)chroma = *(uint32_t *)"NV12"; return VIDEO_FORMAT_UYVY; } } while (0);


 do { if (chroma_is(chroma, "I411")) { *(uint32_t *)chroma = *(uint32_t *)"NV12"; return VIDEO_FORMAT_UYVY; } } while (0);
 do { if (chroma_is(chroma, "Y41B")) { *(uint32_t *)chroma = *(uint32_t *)"NV12"; return VIDEO_FORMAT_UYVY; } } while (0);


 if (chroma_is(chroma, "GREY")) return VIDEO_FORMAT_Y800;
 if (chroma_is(chroma, "Y800")) return VIDEO_FORMAT_Y800;
 if (chroma_is(chroma, "Y8  ")) return VIDEO_FORMAT_Y800;




 *(uint32_t *)chroma = *(uint32_t *)"BGRA";
 return VIDEO_FORMAT_BGRA;
}
