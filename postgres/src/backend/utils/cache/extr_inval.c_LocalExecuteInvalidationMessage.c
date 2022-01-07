
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct RELCACHECALLBACK {int arg; int (* function ) (int ,scalar_t__) ;} ;
struct TYPE_16__ {int backend; int node; } ;
struct TYPE_14__ {scalar_t__ dbId; } ;
struct TYPE_13__ {int backend_hi; scalar_t__ backend_lo; int rnode; } ;
struct TYPE_12__ {scalar_t__ dbId; scalar_t__ relId; } ;
struct TYPE_11__ {scalar_t__ dbId; int catId; } ;
struct TYPE_10__ {scalar_t__ dbId; int hashValue; int id; } ;
struct TYPE_15__ {scalar_t__ id; TYPE_5__ rm; TYPE_4__ sm; TYPE_3__ rc; TYPE_2__ cat; TYPE_1__ cc; } ;
typedef TYPE_6__ SharedInvalidationMessage ;
typedef TYPE_7__ RelFileNodeBackend ;


 int CallSyscacheCallbacks (int ,int ) ;
 int CatalogCacheFlushCatalog (int ) ;
 int FATAL ;
 scalar_t__ InvalidOid ;
 int InvalidateCatalogSnapshot () ;
 scalar_t__ MyDatabaseId ;
 int RelationCacheInvalidate () ;
 int RelationCacheInvalidateEntry (scalar_t__) ;
 int RelationMapInvalidate (int) ;
 scalar_t__ SHAREDINVALCATALOG_ID ;
 scalar_t__ SHAREDINVALRELCACHE_ID ;
 scalar_t__ SHAREDINVALRELMAP_ID ;
 scalar_t__ SHAREDINVALSMGR_ID ;
 scalar_t__ SHAREDINVALSNAPSHOT_ID ;
 int SysCacheInvalidate (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 int relcache_callback_count ;
 struct RELCACHECALLBACK* relcache_callback_list ;
 int smgrclosenode (TYPE_7__) ;
 int stub1 (int ,scalar_t__) ;

void
LocalExecuteInvalidationMessage(SharedInvalidationMessage *msg)
{
 if (msg->id >= 0)
 {
  if (msg->cc.dbId == MyDatabaseId || msg->cc.dbId == InvalidOid)
  {
   InvalidateCatalogSnapshot();

   SysCacheInvalidate(msg->cc.id, msg->cc.hashValue);

   CallSyscacheCallbacks(msg->cc.id, msg->cc.hashValue);
  }
 }
 else if (msg->id == SHAREDINVALCATALOG_ID)
 {
  if (msg->cat.dbId == MyDatabaseId || msg->cat.dbId == InvalidOid)
  {
   InvalidateCatalogSnapshot();

   CatalogCacheFlushCatalog(msg->cat.catId);


  }
 }
 else if (msg->id == SHAREDINVALRELCACHE_ID)
 {
  if (msg->rc.dbId == MyDatabaseId || msg->rc.dbId == InvalidOid)
  {
   int i;

   if (msg->rc.relId == InvalidOid)
    RelationCacheInvalidate();
   else
    RelationCacheInvalidateEntry(msg->rc.relId);

   for (i = 0; i < relcache_callback_count; i++)
   {
    struct RELCACHECALLBACK *ccitem = relcache_callback_list + i;

    ccitem->function(ccitem->arg, msg->rc.relId);
   }
  }
 }
 else if (msg->id == SHAREDINVALSMGR_ID)
 {




  RelFileNodeBackend rnode;

  rnode.node = msg->sm.rnode;
  rnode.backend = (msg->sm.backend_hi << 16) | (int) msg->sm.backend_lo;
  smgrclosenode(rnode);
 }
 else if (msg->id == SHAREDINVALRELMAP_ID)
 {

  if (msg->rm.dbId == InvalidOid)
   RelationMapInvalidate(1);
  else if (msg->rm.dbId == MyDatabaseId)
   RelationMapInvalidate(0);
 }
 else if (msg->id == SHAREDINVALSNAPSHOT_ID)
 {

  if (msg->rm.dbId == InvalidOid)
   InvalidateCatalogSnapshot();
  else if (msg->rm.dbId == MyDatabaseId)
   InvalidateCatalogSnapshot();
 }
 else
  elog(FATAL, "unrecognized SI message ID: %d", msg->id);
}
