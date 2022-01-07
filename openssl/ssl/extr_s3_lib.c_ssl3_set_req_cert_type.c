
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ctype_len; int * ctype; } ;
typedef TYPE_1__ CERT ;


 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (unsigned char const*,size_t) ;

__attribute__((used)) static int ssl3_set_req_cert_type(CERT *c, const unsigned char *p, size_t len)
{
    OPENSSL_free(c->ctype);
    c->ctype = ((void*)0);
    c->ctype_len = 0;
    if (p == ((void*)0) || len == 0)
        return 1;
    if (len > 0xff)
        return 0;
    c->ctype = OPENSSL_memdup(p, len);
    if (c->ctype == ((void*)0))
        return 0;
    c->ctype_len = len;
    return 1;
}
