
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_capture {int texture; int * hdc; scalar_t__ compatibility; int valid; } ;
typedef int * HDC ;


 int * gs_texture_get_dc (int ) ;

__attribute__((used)) static inline HDC dc_capture_get_dc(struct dc_capture *capture)
{
 if (!capture->valid)
  return ((void*)0);

 if (capture->compatibility)
  return capture->hdc;
 else
  return gs_texture_get_dc(capture->texture);
}
