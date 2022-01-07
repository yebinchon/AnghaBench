
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_render_context {int dummy; } ;


 int update (struct mpv_render_context*) ;

__attribute__((used)) static void dispatch_wakeup(void *ptr)
{
    struct mpv_render_context *ctx = ptr;

    update(ctx);
}
