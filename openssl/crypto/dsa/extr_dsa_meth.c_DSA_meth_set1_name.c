
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ DSA_METHOD ;


 int DSA_F_DSA_METH_SET1_NAME ;
 int DSAerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;

int DSA_meth_set1_name(DSA_METHOD *dsam, const char *name)
{
    char *tmpname = OPENSSL_strdup(name);

    if (tmpname == ((void*)0)) {
        DSAerr(DSA_F_DSA_METH_SET1_NAME, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    OPENSSL_free(dsam->name);
    dsam->name = tmpname;

    return 1;
}
