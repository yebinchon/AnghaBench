
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* decoder; } ;
struct TYPE_7__ {int scale_format; TYPE_2__ v; int scale_linesizes; int scale_pic; int swscale; } ;
typedef TYPE_3__ mp_media_t ;
struct TYPE_5__ {int height; int width; int pix_fmt; int color_range; int colorspace; } ;


 int FIXED_1_0 ;
 int LOG_WARNING ;
 int SWS_FAST_BILINEAR ;
 int av_image_alloc (int ,int ,int ,int ,int ,int) ;
 int blog (int ,char*) ;
 int get_sws_colorspace (int ) ;
 int get_sws_range (int ) ;
 int sws_getCachedContext (int *,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *) ;
 int* sws_getCoefficients (int) ;
 int sws_setColorspaceDetails (int ,int const*,int,int const*,int,int ,int ,int ) ;

__attribute__((used)) static bool mp_media_init_scaling(mp_media_t *m)
{
 int space = get_sws_colorspace(m->v.decoder->colorspace);
 int range = get_sws_range(m->v.decoder->color_range);
 const int *coeff = sws_getCoefficients(space);

 m->swscale = sws_getCachedContext(((void*)0), m->v.decoder->width,
       m->v.decoder->height,
       m->v.decoder->pix_fmt,
       m->v.decoder->width,
       m->v.decoder->height, m->scale_format,
       SWS_FAST_BILINEAR, ((void*)0), ((void*)0), ((void*)0));
 if (!m->swscale) {
  blog(LOG_WARNING, "MP: Failed to initialize scaler");
  return 0;
 }

 sws_setColorspaceDetails(m->swscale, coeff, range, coeff, range, 0,
     FIXED_1_0, FIXED_1_0);

 int ret = av_image_alloc(m->scale_pic, m->scale_linesizes,
     m->v.decoder->width, m->v.decoder->height,
     m->scale_format, 1);
 if (ret < 0) {
  blog(LOG_WARNING, "MP: Failed to create scale pic data");
  return 0;
 }

 return 1;
}
