
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int gs_get_size (scalar_t__*,scalar_t__*) ;
 int gs_set_viewport (int ,int ,int,int) ;
 int gs_valid (char*) ;

void gs_reset_viewport(void)
{
 uint32_t cx, cy;

 if (!gs_valid("gs_reset_viewport"))
  return;

 gs_get_size(&cx, &cy);
 gs_set_viewport(0, 0, (int)cx, (int)cy);
}
