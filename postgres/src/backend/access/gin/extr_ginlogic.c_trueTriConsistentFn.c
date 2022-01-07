
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GinTernaryValue ;
typedef int GinScanKey ;


 int GIN_TRUE ;

__attribute__((used)) static GinTernaryValue
trueTriConsistentFn(GinScanKey key)
{
 return GIN_TRUE;
}
