
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int do_init_finalize_tls_frame (struct context*) ;

__attribute__((used)) static void
do_init_frame_tls(struct context *c)
{
    do_init_finalize_tls_frame(c);
}
