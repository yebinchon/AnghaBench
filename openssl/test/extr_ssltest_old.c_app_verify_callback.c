
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct app_verify_arg {char* string; scalar_t__ app_verify; } ;
typedef int X509_STORE_CTX ;
typedef int X509 ;


 char* X509_NAME_oneline (int ,char*,int) ;
 int * X509_STORE_CTX_get0_cert (int *) ;
 int X509_STORE_CTX_get_error_depth (int *) ;
 int X509_get_subject_name (int *) ;
 int X509_verify_cert (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static int app_verify_callback(X509_STORE_CTX *ctx, void *arg)
{
    int ok = 1;
    struct app_verify_arg *cb_arg = arg;

    if (cb_arg->app_verify) {
        char *s = ((void*)0), buf[256];
        X509 *c = X509_STORE_CTX_get0_cert(ctx);

        printf("In app_verify_callback, allowing cert. ");
        printf("Arg is: %s\n", cb_arg->string);
        printf("Finished printing do we have a context? 0x%p a cert? 0x%p\n",
                (void *)ctx, (void *)c);
        if (c)
            s = X509_NAME_oneline(X509_get_subject_name(c), buf, 256);
        if (s != ((void*)0)) {
            printf("cert depth=%d %s\n",
                    X509_STORE_CTX_get_error_depth(ctx), buf);
        }
        return 1;
    }

    ok = X509_verify_cert(ctx);

    return ok;
}
