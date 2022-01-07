
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_ctx {int out_path; } ;
typedef int FILE ;


 int MP_FATAL (struct test_ctx*,char*,char*) ;
 int abort () ;
 int * fopen (char*,char*) ;
 char* mp_tprintf (int,char*,int ,char const*) ;

FILE *test_open_out(struct test_ctx *ctx, const char *name)
{
    char *path = mp_tprintf(4096, "%s/%s", ctx->out_path, name);
    FILE *f = fopen(path, "wb");
    if (!f) {
        MP_FATAL(ctx, "Could not open '%s' for writing.\n", path);
        abort();
    }
    return f;
}
