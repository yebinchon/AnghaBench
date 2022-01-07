
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ DSA_METHOD ;



const char *DSA_meth_get0_name(const DSA_METHOD *dsam)
{
    return dsam->name;
}
