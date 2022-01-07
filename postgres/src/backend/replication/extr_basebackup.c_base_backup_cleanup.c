
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int do_pg_abort_backup () ;

__attribute__((used)) static void
base_backup_cleanup(int code, Datum arg)
{
 do_pg_abort_backup();
}
