
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ st_procpid; } ;
typedef TYPE_1__ PgBackendStatus ;
typedef int Datum ;


 TYPE_1__* MyBEEntry ;
 int MyDatabaseId ;
 scalar_t__ OidIsValid (int ) ;
 int PGSTAT_BEGIN_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int PGSTAT_END_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int pgstat_report_stat (int) ;

__attribute__((used)) static void
pgstat_beshutdown_hook(int code, Datum arg)
{
 volatile PgBackendStatus *beentry = MyBEEntry;







 if (OidIsValid(MyDatabaseId))
  pgstat_report_stat(1);






 PGSTAT_BEGIN_WRITE_ACTIVITY(beentry);

 beentry->st_procpid = 0;

 PGSTAT_END_WRITE_ACTIVITY(beentry);
}
