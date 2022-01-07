
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* st_appname; } ;
typedef TYPE_1__ PgBackendStatus ;


 TYPE_1__* MyBEEntry ;
 scalar_t__ NAMEDATALEN ;
 int PGSTAT_BEGIN_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int PGSTAT_END_WRITE_ACTIVITY (TYPE_1__ volatile*) ;
 int memcpy (char*,char const*,int) ;
 int pg_mbcliplen (char const*,int ,scalar_t__) ;
 int strlen (char const*) ;

void
pgstat_report_appname(const char *appname)
{
 volatile PgBackendStatus *beentry = MyBEEntry;
 int len;

 if (!beentry)
  return;


 len = pg_mbcliplen(appname, strlen(appname), NAMEDATALEN - 1);






 PGSTAT_BEGIN_WRITE_ACTIVITY(beentry);

 memcpy((char *) beentry->st_appname, appname, len);
 beentry->st_appname[len] = '\0';

 PGSTAT_END_WRITE_ACTIVITY(beentry);
}
