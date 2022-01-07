
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int LogicalDecodingContext ;


 int Assert (int) ;
 int * CreateInitDecodingContext (char*,int ,int,int ,int ,int *,int *,int *) ;
 int DecodingContextFindStartpoint (int *) ;
 int FreeDecodingContext (int *) ;
 int MyReplicationSlot ;
 int NIL ;
 int RS_EPHEMERAL ;
 int RS_TEMPORARY ;
 int ReplicationSlotCreate (char*,int,int ) ;
 int logical_read_local_xlog_page ;

__attribute__((used)) static void
create_logical_replication_slot(char *name, char *plugin,
        bool temporary, XLogRecPtr restart_lsn)
{
 LogicalDecodingContext *ctx = ((void*)0);

 Assert(!MyReplicationSlot);
 ReplicationSlotCreate(name, 1,
        temporary ? RS_TEMPORARY : RS_EPHEMERAL);




 ctx = CreateInitDecodingContext(plugin, NIL,
         0,
         restart_lsn,
         logical_read_local_xlog_page, ((void*)0), ((void*)0),
         ((void*)0));


 DecodingContextFindStartpoint(ctx);


 FreeDecodingContext(ctx);
}
