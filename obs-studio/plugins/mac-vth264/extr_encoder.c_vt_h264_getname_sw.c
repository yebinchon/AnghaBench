
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (void*) ;
 char const* obs_module_text (char*) ;

__attribute__((used)) static const char *vt_h264_getname_sw(void *unused)
{
 UNUSED_PARAMETER(unused);
 return obs_module_text("VTH264EncSW");
}
