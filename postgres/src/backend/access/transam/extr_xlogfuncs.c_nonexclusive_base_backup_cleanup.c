
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int WARNING ;
 int do_pg_abort_backup () ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
nonexclusive_base_backup_cleanup(int code, Datum arg)
{
 do_pg_abort_backup();
 ereport(WARNING,
   (errmsg("aborting backup due to backend exiting before pg_stop_backup was called")));
}
