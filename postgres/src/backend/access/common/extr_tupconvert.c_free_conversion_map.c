
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* outisnull; struct TYPE_4__* outvalues; struct TYPE_4__* inisnull; struct TYPE_4__* invalues; struct TYPE_4__* attrMap; } ;
typedef TYPE_1__ TupleConversionMap ;


 int pfree (TYPE_1__*) ;

void
free_conversion_map(TupleConversionMap *map)
{

 pfree(map->attrMap);
 pfree(map->invalues);
 pfree(map->inisnull);
 pfree(map->outvalues);
 pfree(map->outisnull);
 pfree(map);
}
