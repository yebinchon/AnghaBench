
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int GS_NEITHER ;
 int gs_enable_depth_test (int) ;
 int gs_ortho (float,float,float,float,float,float) ;
 int gs_set_cull_mode (int ) ;
 int gs_set_viewport (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void set_render_size(uint32_t width, uint32_t height)
{
 gs_enable_depth_test(0);
 gs_set_cull_mode(GS_NEITHER);

 gs_ortho(0.0f, (float)width, 0.0f, (float)height, -100.0f, 100.0f);
 gs_set_viewport(0, 0, width, height);
}
