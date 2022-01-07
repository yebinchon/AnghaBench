
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dest_dboid; int src_dboid; } ;
typedef TYPE_1__ createdb_failure_params ;
typedef int Datum ;


 int DatabaseRelationId ;
 scalar_t__ DatumGetPointer (int ) ;
 int ShareLock ;
 int UnlockSharedObject (int ,int ,int ,int ) ;
 int remove_dbtablespaces (int ) ;

__attribute__((used)) static void
createdb_failure_callback(int code, Datum arg)
{
 createdb_failure_params *fparms = (createdb_failure_params *) DatumGetPointer(arg);






 UnlockSharedObject(DatabaseRelationId, fparms->src_dboid, 0, ShareLock);


 remove_dbtablespaces(fparms->dest_dboid);
}
