
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typcollation; int cmp_proc_finfo; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int FmgrInfo ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;

__attribute__((used)) static int
element_compare(const void *key1, const void *key2, void *arg)
{
 Datum d1 = *((const Datum *) key1);
 Datum d2 = *((const Datum *) key2);
 TypeCacheEntry *typentry = (TypeCacheEntry *) arg;
 FmgrInfo *cmpfunc = &typentry->cmp_proc_finfo;
 Datum c;

 c = FunctionCall2Coll(cmpfunc, typentry->typcollation, d1, d2);
 return DatumGetInt32(c);
}
