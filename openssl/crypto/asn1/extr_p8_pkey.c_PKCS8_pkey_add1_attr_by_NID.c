
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attributes; } ;
typedef TYPE_1__ PKCS8_PRIV_KEY_INFO ;


 int * X509at_add1_attr_by_NID (int *,int,int,unsigned char const*,int) ;

int PKCS8_pkey_add1_attr_by_NID(PKCS8_PRIV_KEY_INFO *p8, int nid, int type,
                                const unsigned char *bytes, int len)
{
    if (X509at_add1_attr_by_NID(&p8->attributes, nid, type, bytes, len) != ((void*)0))
        return 1;
    return 0;
}
