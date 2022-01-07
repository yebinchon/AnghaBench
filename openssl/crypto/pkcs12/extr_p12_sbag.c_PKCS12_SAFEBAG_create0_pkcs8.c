
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_SIG ;
struct TYPE_5__ {int * shkeybag; } ;
struct TYPE_6__ {TYPE_1__ value; int type; } ;
typedef TYPE_2__ PKCS12_SAFEBAG ;


 int ERR_R_MALLOC_FAILURE ;
 int NID_pkcs8ShroudedKeyBag ;
 int OBJ_nid2obj (int ) ;
 int PKCS12_F_PKCS12_SAFEBAG_CREATE0_PKCS8 ;
 TYPE_2__* PKCS12_SAFEBAG_new () ;
 int PKCS12err (int ,int ) ;

PKCS12_SAFEBAG *PKCS12_SAFEBAG_create0_pkcs8(X509_SIG *p8)
{
    PKCS12_SAFEBAG *bag = PKCS12_SAFEBAG_new();


    if (bag == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_SAFEBAG_CREATE0_PKCS8, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    bag->type = OBJ_nid2obj(NID_pkcs8ShroudedKeyBag);
    bag->value.shkeybag = p8;
    return bag;
}
