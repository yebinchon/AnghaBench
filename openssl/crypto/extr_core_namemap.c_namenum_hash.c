
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ NAMENUM_ENTRY ;


 unsigned long openssl_lh_strcasehash (int ) ;

__attribute__((used)) static unsigned long namenum_hash(const NAMENUM_ENTRY *n)
{
    return openssl_lh_strcasehash(n->name);
}
