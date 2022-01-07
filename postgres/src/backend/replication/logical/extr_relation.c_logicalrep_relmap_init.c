
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; void* hcxt; } ;
typedef int Oid ;
typedef int LogicalRepTyp ;
typedef int LogicalRepRelMapEntry ;
typedef int LogicalRepRelId ;
typedef TYPE_1__ HASHCTL ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 void* AllocSetContextCreate (int ,char*,int ) ;
 int CacheMemoryContext ;
 int CacheRegisterRelcacheCallback (int ,int ) ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 void* LogicalRepRelMap ;
 void* LogicalRepRelMapContext ;
 void* LogicalRepTypMap ;
 int MemSet (TYPE_1__*,int ,int) ;
 void* hash_create (char*,int,TYPE_1__*,int) ;
 int logicalrep_relmap_invalidate_cb ;

__attribute__((used)) static void
logicalrep_relmap_init(void)
{
 HASHCTL ctl;

 if (!LogicalRepRelMapContext)
  LogicalRepRelMapContext =
   AllocSetContextCreate(CacheMemoryContext,
          "LogicalRepRelMapContext",
          ALLOCSET_DEFAULT_SIZES);


 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(LogicalRepRelId);
 ctl.entrysize = sizeof(LogicalRepRelMapEntry);
 ctl.hcxt = LogicalRepRelMapContext;

 LogicalRepRelMap = hash_create("logicalrep relation map cache", 128, &ctl,
           HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);


 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(Oid);
 ctl.entrysize = sizeof(LogicalRepTyp);
 ctl.hcxt = LogicalRepRelMapContext;


 LogicalRepTypMap = hash_create("logicalrep type map cache", 2, &ctl,
           HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);


 CacheRegisterRelcacheCallback(logicalrep_relmap_invalidate_cb,
          (Datum) 0);
}
