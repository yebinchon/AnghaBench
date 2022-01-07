
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ localreloid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ LogicalRepRelMapEntry ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 scalar_t__ InvalidOid ;
 int * LogicalRepRelMap ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int hash_seq_term (int *) ;

__attribute__((used)) static void
logicalrep_relmap_invalidate_cb(Datum arg, Oid reloid)
{
 LogicalRepRelMapEntry *entry;


 if (LogicalRepRelMap == ((void*)0))
  return;

 if (reloid != InvalidOid)
 {
  HASH_SEQ_STATUS status;

  hash_seq_init(&status, LogicalRepRelMap);


  while ((entry = (LogicalRepRelMapEntry *) hash_seq_search(&status)) != ((void*)0))
  {
   if (entry->localreloid == reloid)
   {
    entry->localreloid = InvalidOid;
    hash_seq_term(&status);
    break;
   }
  }
 }
 else
 {

  HASH_SEQ_STATUS status;

  hash_seq_init(&status, LogicalRepRelMap);

  while ((entry = (LogicalRepRelMapEntry *) hash_seq_search(&status)) != ((void*)0))
   entry->localreloid = InvalidOid;
 }
}
