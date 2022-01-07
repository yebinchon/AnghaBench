
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ format; } ;
struct gs_texture_2d {scalar_t__ width; scalar_t__ height; TYPE_1__ base; } ;
struct gs_stage_surface {scalar_t__ format; scalar_t__ width; scalar_t__ height; } ;


 scalar_t__ GS_TEXTURE_2D ;
 int LOG_ERROR ;
 int blog (int ,char*) ;

__attribute__((used)) static bool can_stage(struct gs_stage_surface *dst, struct gs_texture_2d *src)
{
 if (!src) {
  blog(LOG_ERROR, "Source texture is NULL");
  return 0;
 }

 if (src->base.type != GS_TEXTURE_2D) {
  blog(LOG_ERROR, "Source texture must be a 2D texture");
  return 0;
 }

 if (!dst) {
  blog(LOG_ERROR, "Destination surface is NULL");
  return 0;
 }

 if (src->base.format != dst->format) {
  blog(LOG_ERROR, "Source and destination formats do not match");
  return 0;
 }

 if (src->width != dst->width || src->height != dst->height) {
  blog(LOG_ERROR, "Source and destination must have the same "
    "dimensions");
  return 0;
 }

 return 1;
}
