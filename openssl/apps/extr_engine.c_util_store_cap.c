
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct util_store_cap_data {scalar_t__ engine; scalar_t__ ok; int cap_size; int cap_buf; } ;
typedef int buf ;
typedef int OSSL_STORE_LOADER ;


 int BIO_snprintf (char*,int,char*,int ) ;
 scalar_t__ OSSL_STORE_LOADER_get0_engine (int const*) ;
 int OSSL_STORE_LOADER_get0_scheme (int const*) ;
 int append_buf (int ,int ,char*) ;

__attribute__((used)) static void util_store_cap(const OSSL_STORE_LOADER *loader, void *arg)
{
    struct util_store_cap_data *ctx = arg;

    if (OSSL_STORE_LOADER_get0_engine(loader) == ctx->engine) {
        char buf[256];
        BIO_snprintf(buf, sizeof(buf), "STORE(%s)",
                     OSSL_STORE_LOADER_get0_scheme(loader));
        if (!append_buf(ctx->cap_buf, ctx->cap_size, buf))
            ctx->ok = 0;
    }
}
