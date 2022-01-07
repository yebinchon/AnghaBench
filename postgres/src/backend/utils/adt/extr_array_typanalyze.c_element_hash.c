
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int coll_id; int hash; } ;
typedef int Size ;
typedef int Datum ;


 int DatumGetUInt32 (int ) ;
 int FunctionCall1Coll (int ,int ,int ) ;
 TYPE_1__* array_extra_data ;

__attribute__((used)) static uint32
element_hash(const void *key, Size keysize)
{
 Datum d = *((const Datum *) key);
 Datum h;

 h = FunctionCall1Coll(array_extra_data->hash,
        array_extra_data->coll_id,
        d);
 return DatumGetUInt32(h);
}
