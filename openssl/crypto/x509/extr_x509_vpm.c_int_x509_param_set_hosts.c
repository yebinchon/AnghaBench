
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hosts; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int OPENSSL_free (char*) ;
 char* OPENSSL_strndup (char const*,size_t) ;
 int SET_HOST ;
 scalar_t__ memchr (char const*,char,size_t) ;
 int sk_OPENSSL_STRING_free (int *) ;
 int * sk_OPENSSL_STRING_new_null () ;
 scalar_t__ sk_OPENSSL_STRING_num (int *) ;
 int sk_OPENSSL_STRING_pop_free (int *,int ) ;
 int sk_OPENSSL_STRING_push (int *,char*) ;
 int str_free ;
 size_t strlen (char const*) ;

__attribute__((used)) static int int_x509_param_set_hosts(X509_VERIFY_PARAM *vpm, int mode,
                                    const char *name, size_t namelen)
{
    char *copy;





    if (namelen == 0 || name == ((void*)0))
        namelen = name ? strlen(name) : 0;
    else if (name && memchr(name, '\0', namelen > 1 ? namelen - 1 : namelen))
        return 0;
    if (namelen > 0 && name[namelen - 1] == '\0')
        --namelen;

    if (mode == SET_HOST) {
        sk_OPENSSL_STRING_pop_free(vpm->hosts, str_free);
        vpm->hosts = ((void*)0);
    }
    if (name == ((void*)0) || namelen == 0)
        return 1;

    copy = OPENSSL_strndup(name, namelen);
    if (copy == ((void*)0))
        return 0;

    if (vpm->hosts == ((void*)0) &&
        (vpm->hosts = sk_OPENSSL_STRING_new_null()) == ((void*)0)) {
        OPENSSL_free(copy);
        return 0;
    }

    if (!sk_OPENSSL_STRING_push(vpm->hosts, copy)) {
        OPENSSL_free(copy);
        if (sk_OPENSSL_STRING_num(vpm->hosts) == 0) {
            sk_OPENSSL_STRING_free(vpm->hosts);
            vpm->hosts = ((void*)0);
        }
        return 0;
    }

    return 1;
}
