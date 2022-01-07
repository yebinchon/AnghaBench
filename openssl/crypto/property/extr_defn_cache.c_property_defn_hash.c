
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prop; } ;
typedef TYPE_1__ PROPERTY_DEFN_ELEM ;


 unsigned long OPENSSL_LH_strhash (int ) ;

__attribute__((used)) static unsigned long property_defn_hash(const PROPERTY_DEFN_ELEM *a)
{
    return OPENSSL_LH_strhash(a->prop);
}
