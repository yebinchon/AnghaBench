
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int jitarr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int Datum ;


 int ResourceArrayAdd (int *,int ) ;

void
ResourceOwnerRememberJIT(ResourceOwner owner, Datum handle)
{
 ResourceArrayAdd(&(owner->jitarr), handle);
}
