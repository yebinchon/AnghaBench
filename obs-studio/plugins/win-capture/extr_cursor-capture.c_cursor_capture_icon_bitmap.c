
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ICONINFO ;


 int * copy_from_color (int *,int *,int *) ;
 int * copy_from_mask (int *,int *,int *) ;

__attribute__((used)) static inline uint8_t *cursor_capture_icon_bitmap(ICONINFO *ii, uint32_t *width,
        uint32_t *height)
{
 uint8_t *output;

 output = copy_from_color(ii, width, height);
 if (!output)
  output = copy_from_mask(ii, width, height);

 return output;
}
