
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coll_id; int cmp; } ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int ,int ,int ,int ) ;
 TYPE_1__* array_extra_data ;

__attribute__((used)) static int
element_compare(const void *key1, const void *key2)
{
 Datum d1 = *((const Datum *) key1);
 Datum d2 = *((const Datum *) key2);
 Datum c;

 c = FunctionCall2Coll(array_extra_data->cmp,
        array_extra_data->coll_id,
        d1, d2);
 return DatumGetInt32(c);
}
