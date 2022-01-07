
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {int cms; } ;
typedef int bstr ;


 scalar_t__ gl_lcms_set_memory_profile (int ,int ) ;
 int reinit_from_options (struct gl_video*) ;

void gl_video_set_icc_profile(struct gl_video *p, bstr icc_data)
{
    if (gl_lcms_set_memory_profile(p->cms, icc_data))
        reinit_from_options(p);
}
