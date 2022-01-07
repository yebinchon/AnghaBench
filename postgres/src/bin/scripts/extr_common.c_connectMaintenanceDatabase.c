
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
typedef int PGconn ;


 int * connectDatabase (char const*,char const*,char const*,char const*,int,char const*,int,int,int) ;

PGconn *
connectMaintenanceDatabase(const char *maintenance_db,
         const char *pghost, const char *pgport,
         const char *pguser, enum trivalue prompt_password,
         const char *progname, bool echo)
{
 PGconn *conn;


 if (maintenance_db)
  return connectDatabase(maintenance_db, pghost, pgport, pguser,
          prompt_password, progname, echo, 0, 0);


 conn = connectDatabase("postgres", pghost, pgport, pguser, prompt_password,
         progname, echo, 1, 0);
 if (!conn)
  conn = connectDatabase("template1", pghost, pgport, pguser,
          prompt_password, progname, echo, 0, 0);

 return conn;
}
