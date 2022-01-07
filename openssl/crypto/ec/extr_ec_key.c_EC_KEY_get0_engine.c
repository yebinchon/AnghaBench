
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * engine; } ;
typedef int ENGINE ;
typedef TYPE_1__ EC_KEY ;



ENGINE *EC_KEY_get0_engine(const EC_KEY *eckey)
{
    return eckey->engine;
}
