
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dest_tsoid; int dest_dboid; } ;
typedef TYPE_1__ movedb_failure_params ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 char* GetDatabasePath (int ,int ) ;
 int rmtree (char*,int) ;

__attribute__((used)) static void
movedb_failure_callback(int code, Datum arg)
{
 movedb_failure_params *fparms = (movedb_failure_params *) DatumGetPointer(arg);
 char *dstpath;


 dstpath = GetDatabasePath(fparms->dest_dboid, fparms->dest_tsoid);

 (void) rmtree(dstpath, 1);
}
