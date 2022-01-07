
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect_f {int y1; int x1; int y0; int x0; } ;
struct gl_transform {int dummy; } ;


 int gl_transform_vec (struct gl_transform,int *,int *) ;

__attribute__((used)) static inline void gl_transform_rect(struct gl_transform t, struct mp_rect_f *r)
{
    gl_transform_vec(t, &r->x0, &r->y0);
    gl_transform_vec(t, &r->x1, &r->y1);
}
