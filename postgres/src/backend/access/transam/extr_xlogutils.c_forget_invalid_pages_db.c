
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dbNode; } ;
struct TYPE_4__ {int blkno; int forkno; TYPE_3__ node; } ;
struct TYPE_5__ {TYPE_1__ key; } ;
typedef TYPE_2__ xl_invalid_page ;
typedef scalar_t__ Oid ;
typedef int HASH_SEQ_STATUS ;


 scalar_t__ DEBUG2 ;
 int ERROR ;
 int HASH_REMOVE ;
 scalar_t__ client_min_messages ;
 int elog (scalar_t__,char*,...) ;
 int * hash_search (int *,void*,int ,int *) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int * invalid_page_tab ;
 scalar_t__ log_min_messages ;
 int pfree (char*) ;
 char* relpathperm (TYPE_3__,int ) ;

__attribute__((used)) static void
forget_invalid_pages_db(Oid dbid)
{
 HASH_SEQ_STATUS status;
 xl_invalid_page *hentry;

 if (invalid_page_tab == ((void*)0))
  return;

 hash_seq_init(&status, invalid_page_tab);

 while ((hentry = (xl_invalid_page *) hash_seq_search(&status)) != ((void*)0))
 {
  if (hentry->key.node.dbNode == dbid)
  {
   if (log_min_messages <= DEBUG2 || client_min_messages <= DEBUG2)
   {
    char *path = relpathperm(hentry->key.node, hentry->key.forkno);

    elog(DEBUG2, "page %u of relation %s has been dropped",
      hentry->key.blkno, path);
    pfree(path);
   }

   if (hash_search(invalid_page_tab,
       (void *) &hentry->key,
       HASH_REMOVE, ((void*)0)) == ((void*)0))
    elog(ERROR, "hash table corrupted");
  }
 }
}
