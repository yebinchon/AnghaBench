
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_capture {int valid; int texture; int height; int width; scalar_t__ compatibility; } ;


 int GS_BGRA ;
 int GS_DYNAMIC ;
 int LOG_WARNING ;
 int blog (int ,char*) ;
 int gs_texture_create (int ,int ,int ,int,int *,int ) ;
 int gs_texture_create_gdi (int ,int ) ;

__attribute__((used)) static inline void init_textures(struct dc_capture *capture)
{
 if (capture->compatibility)
  capture->texture = gs_texture_create(capture->width,
           capture->height, GS_BGRA,
           1, ((void*)0), GS_DYNAMIC);
 else
  capture->texture =
   gs_texture_create_gdi(capture->width, capture->height);

 if (!capture->texture) {
  blog(LOG_WARNING, "[dc_capture_init] Failed to "
      "create textures");
  return;
 }

 capture->valid = 1;
}
