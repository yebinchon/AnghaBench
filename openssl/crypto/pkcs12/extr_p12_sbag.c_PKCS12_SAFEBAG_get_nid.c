
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ PKCS12_SAFEBAG ;


 int OBJ_obj2nid (int ) ;

int PKCS12_SAFEBAG_get_nid(const PKCS12_SAFEBAG *bag)
{
    return OBJ_obj2nid(bag->type);
}
