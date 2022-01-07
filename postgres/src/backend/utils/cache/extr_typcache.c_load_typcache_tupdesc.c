
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type_id; scalar_t__ tupDesc_identifier; TYPE_7__* tupDesc; int typrelid; } ;
typedef TYPE_2__ TypeCacheEntry ;
struct TYPE_12__ {scalar_t__ tdrefcount; } ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ reltype; } ;
typedef TYPE_3__* Relation ;


 int AccessShareLock ;
 int Assert (int) ;
 int ERROR ;
 int OidIsValid (int ) ;
 TYPE_7__* RelationGetDescr (TYPE_3__*) ;
 int elog (int ,char*,scalar_t__) ;
 int relation_close (TYPE_3__*,int ) ;
 TYPE_3__* relation_open (int ,int ) ;
 scalar_t__ tupledesc_id_counter ;

__attribute__((used)) static void
load_typcache_tupdesc(TypeCacheEntry *typentry)
{
 Relation rel;

 if (!OidIsValid(typentry->typrelid))
  elog(ERROR, "invalid typrelid for composite type %u",
    typentry->type_id);
 rel = relation_open(typentry->typrelid, AccessShareLock);
 Assert(rel->rd_rel->reltype == typentry->type_id);







 typentry->tupDesc = RelationGetDescr(rel);

 Assert(typentry->tupDesc->tdrefcount > 0);
 typentry->tupDesc->tdrefcount++;





 typentry->tupDesc_identifier = ++tupledesc_id_counter;

 relation_close(rel, AccessShareLock);
}
