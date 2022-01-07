
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_SIG ;
struct TYPE_4__ {int const* shkeybag; } ;
struct TYPE_5__ {TYPE_1__ value; int type; } ;
typedef TYPE_2__ PKCS12_SAFEBAG ;


 scalar_t__ NID_pkcs8ShroudedKeyBag ;
 scalar_t__ OBJ_obj2nid (int ) ;

const X509_SIG *PKCS12_SAFEBAG_get0_pkcs8(const PKCS12_SAFEBAG *bag)
{
    if (OBJ_obj2nid(bag->type) != NID_pkcs8ShroudedKeyBag)
        return ((void*)0);
    return bag->value.shkeybag;
}
