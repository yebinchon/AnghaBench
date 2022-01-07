
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* attrMap; int* inisnull; int* outisnull; TYPE_2__* outdesc; int indesc; int * outvalues; int * invalues; } ;
typedef TYPE_1__ TupleConversionMap ;
struct TYPE_5__ {int natts; } ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int AttrNumber ;


 int heap_deform_tuple (int ,int ,int *,int*) ;
 int heap_form_tuple (TYPE_2__*,int *,int*) ;

HeapTuple
execute_attr_map_tuple(HeapTuple tuple, TupleConversionMap *map)
{
 AttrNumber *attrMap = map->attrMap;
 Datum *invalues = map->invalues;
 bool *inisnull = map->inisnull;
 Datum *outvalues = map->outvalues;
 bool *outisnull = map->outisnull;
 int outnatts = map->outdesc->natts;
 int i;






 heap_deform_tuple(tuple, map->indesc, invalues + 1, inisnull + 1);




 for (i = 0; i < outnatts; i++)
 {
  int j = attrMap[i];

  outvalues[i] = invalues[j];
  outisnull[i] = inisnull[j];
 }




 return heap_form_tuple(map->outdesc, outvalues, outisnull);
}
