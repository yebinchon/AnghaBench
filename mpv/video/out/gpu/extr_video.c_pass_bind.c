
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image {int dummy; } ;
struct gl_video {int num_pass_imgs; int pass_imgs; } ;


 int MP_TARRAY_APPEND (struct gl_video*,int ,int,struct image) ;

__attribute__((used)) static int pass_bind(struct gl_video *p, struct image img)
{
    int idx = p->num_pass_imgs;
    MP_TARRAY_APPEND(p, p->pass_imgs, p->num_pass_imgs, img);
    return idx;
}
