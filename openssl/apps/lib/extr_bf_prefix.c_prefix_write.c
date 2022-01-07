
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* prefix; int linestart; } ;
typedef TYPE_1__ PREFIX_CTX ;
typedef int BIO ;


 TYPE_1__* BIO_get_data (int *) ;
 int BIO_next (int *) ;
 int BIO_write_ex (int ,char const*,size_t,size_t*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int prefix_write(BIO *b, const char *out, size_t outl,
                        size_t *numwritten)
{
    PREFIX_CTX *ctx = BIO_get_data(b);

    if (ctx == ((void*)0))
        return 0;


    if (ctx->prefix == ((void*)0) || *ctx->prefix == '\0') {

        if (outl > 0)
            ctx->linestart = (out[outl-1] == '\n');
        return BIO_write_ex(BIO_next(b), out, outl, numwritten);
    }

    *numwritten = 0;

    while (outl > 0) {
        size_t i;
        char c;


        if (ctx->linestart) {
            size_t dontcare;

            if (!BIO_write_ex(BIO_next(b), ctx->prefix, strlen(ctx->prefix),
                              &dontcare))
                return 0;
            ctx->linestart = 0;
        }


        for (i = 0, c = '\0'; i < outl && (c = out[i]) != '\n'; i++)
            continue;
        if (c == '\n')
            i++;


        while (i > 0) {
            size_t num = 0;

            if (!BIO_write_ex(BIO_next(b), out, i, &num))
                return 0;
            out += num;
            outl -= num;
            *numwritten += num;
            i -= num;
        }


        if (c == '\n')
            ctx->linestart = 1;
    }

    return 1;
}
