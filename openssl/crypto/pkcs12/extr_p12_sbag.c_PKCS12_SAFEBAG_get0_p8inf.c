
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int const* keybag; } ;
struct TYPE_6__ {TYPE_1__ value; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ PKCS12_SAFEBAG ;


 scalar_t__ NID_keyBag ;
 scalar_t__ PKCS12_SAFEBAG_get_nid (TYPE_2__ const*) ;

const PKCS8_PRIV_KEY_INFO *PKCS12_SAFEBAG_get0_p8inf(const PKCS12_SAFEBAG *bag)
{
    if (PKCS12_SAFEBAG_get_nid(bag) != NID_keyBag)
        return ((void*)0);
    return bag->value.keybag;
}
