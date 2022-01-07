
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int aux; } ;
typedef TYPE_1__ X509 ;


 int i2d_X509 (TYPE_1__ const*,unsigned char**) ;
 int i2d_X509_CERT_AUX (int ,unsigned char**) ;

__attribute__((used)) static int i2d_x509_aux_internal(const X509 *a, unsigned char **pp)
{
    int length, tmplen;
    unsigned char *start = pp != ((void*)0) ? *pp : ((void*)0);






    length = i2d_X509(a, pp);
    if (length <= 0 || a == ((void*)0))
        return length;

    tmplen = i2d_X509_CERT_AUX(a->aux, pp);
    if (tmplen < 0) {
        if (start != ((void*)0))
            *pp = start;
        return tmplen;
    }
    length += tmplen;

    return length;
}
