
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_cb_ctx {int dummy; } ;


 int subprocess_output (struct subprocess_cb_ctx*,int,char*,size_t) ;

__attribute__((used)) static void subprocess_stderr(void *p, char *data, size_t size)
{
    struct subprocess_cb_ctx *ctx = p;
    subprocess_output(ctx, 2, data, size);
}
