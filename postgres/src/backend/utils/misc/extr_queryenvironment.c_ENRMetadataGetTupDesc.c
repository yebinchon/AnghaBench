
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * TupleDesc ;
struct TYPE_7__ {scalar_t__ reliddesc; int * tupdesc; } ;
struct TYPE_6__ {int * rd_att; } ;
typedef TYPE_1__* Relation ;
typedef TYPE_2__* EphemeralNamedRelationMetadata ;


 int Assert (int) ;
 scalar_t__ InvalidOid ;
 int NoLock ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (scalar_t__,int ) ;

TupleDesc
ENRMetadataGetTupDesc(EphemeralNamedRelationMetadata enrmd)
{
 TupleDesc tupdesc;


 Assert((enrmd->reliddesc == InvalidOid) != (enrmd->tupdesc == ((void*)0)));

 if (enrmd->tupdesc != ((void*)0))
  tupdesc = enrmd->tupdesc;
 else
 {
  Relation relation;

  relation = table_open(enrmd->reliddesc, NoLock);
  tupdesc = relation->rd_att;
  table_close(relation, NoLock);
 }

 return tupdesc;
}
