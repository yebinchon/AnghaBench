
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {scalar_t__ num_pass_imgs; } ;



__attribute__((used)) static void cleanup_binds(struct gl_video *p)
{
    p->num_pass_imgs = 0;
}
