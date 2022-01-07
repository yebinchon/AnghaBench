
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int X509_STORE_CTX ;


 char* X509_NAME_oneline (int ,char*,int) ;
 int X509_STORE_CTX_get_current_cert (int *) ;
 int X509_STORE_CTX_get_error (int *) ;
 int X509_STORE_CTX_get_error_depth (int *) ;



 int X509_get_subject_name (int ) ;
 char* X509_verify_cert_error_string (int) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,int,char*) ;
 int stderr ;

__attribute__((used)) static int verify_callback(int ok, X509_STORE_CTX *ctx)
{
    char *s, buf[256];

    s = X509_NAME_oneline(X509_get_subject_name(X509_STORE_CTX_get_current_cert(ctx)),
                          buf, sizeof(buf));
    if (s != ((void*)0)) {
        if (ok)
            printf("depth=%d %s\n", X509_STORE_CTX_get_error_depth(ctx), buf);
        else {
            fprintf(stderr, "depth=%d error=%d %s\n",
                    X509_STORE_CTX_get_error_depth(ctx),
                    X509_STORE_CTX_get_error(ctx), buf);
        }
    }

    if (ok == 0) {
        int i = X509_STORE_CTX_get_error(ctx);

        switch (i) {
        default:
            fprintf(stderr, "Error string: %s\n",
                    X509_verify_cert_error_string(i));
            break;
        case 129:
        case 130:
        case 128:
            ok = 1;
            break;
        }
    }

    return ok;
}
