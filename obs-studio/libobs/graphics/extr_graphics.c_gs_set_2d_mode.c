
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int gs_get_size (scalar_t__*,scalar_t__*) ;
 int gs_ortho (float,float,float,float,double,float) ;
 int gs_valid (char*) ;

void gs_set_2d_mode(void)
{
 uint32_t cx, cy;

 if (!gs_valid("gs_set_2d_mode"))
  return;

 gs_get_size(&cx, &cy);
 gs_ortho(0.0f, (float)cx, 0.0f, (float)cy, -1.0, -1024.0f);
}
