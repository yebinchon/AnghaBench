
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERROR ;
 char* PGSTAT_STAT_PERMANENT_DIRECTORY ;
 int elog (int ,char*) ;
 char* pgstat_stat_directory ;
 int snprintf (char*,int,char*,char*,int,char*) ;

__attribute__((used)) static void
get_dbstat_filename(bool permanent, bool tempname, Oid databaseid,
     char *filename, int len)
{
 int printed;


 printed = snprintf(filename, len, "%s/db_%u.%s",
        permanent ? PGSTAT_STAT_PERMANENT_DIRECTORY :
        pgstat_stat_directory,
        databaseid,
        tempname ? "tmp" : "stat");
 if (printed >= len)
  elog(ERROR, "overlength pgstat path");
}
