
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_zimg_context {int dummy; } ;


 int destroy_zimg (struct mp_zimg_context*) ;

__attribute__((used)) static void free_mp_zimg(void *p)
{
    struct mp_zimg_context *ctx = p;

    destroy_zimg(ctx);
}
