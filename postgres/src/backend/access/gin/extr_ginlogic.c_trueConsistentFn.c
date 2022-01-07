
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recheckCurItem; } ;
typedef TYPE_1__* GinScanKey ;



__attribute__((used)) static bool
trueConsistentFn(GinScanKey key)
{
 key->recheckCurItem = 0;
 return 1;
}
