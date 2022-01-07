
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ FUNCTION ;


 unsigned long OPENSSL_LH_strhash (int ) ;

__attribute__((used)) static unsigned long function_hash(const FUNCTION * a)
{
    return OPENSSL_LH_strhash(a->name);
}
