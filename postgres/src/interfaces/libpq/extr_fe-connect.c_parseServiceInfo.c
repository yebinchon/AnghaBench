
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int serviceFile ;
typedef int homedir ;
typedef int PQconninfoOption ;
typedef int PQExpBuffer ;


 int MAXPGPATH ;
 char* SYSCONFDIR ;
 char* conninfo_getval (int *,char*) ;
 char* getenv (char*) ;
 int libpq_gettext (char*) ;
 int parseServiceFile (char*,char const*,int *,int ,int*) ;
 int pqGetHomeDirectory (char*,int) ;
 int printfPQExpBuffer (int ,int ,char const*) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
parseServiceInfo(PQconninfoOption *options, PQExpBuffer errorMessage)
{
 const char *service = conninfo_getval(options, "service");
 char serviceFile[MAXPGPATH];
 char *env;
 bool group_found = 0;
 int status;
 struct stat stat_buf;






 if (service == ((void*)0))
  service = getenv("PGSERVICE");


 if (service == ((void*)0))
  return 0;





 if ((env = getenv("PGSERVICEFILE")) != ((void*)0))
  strlcpy(serviceFile, env, sizeof(serviceFile));
 else
 {
  char homedir[MAXPGPATH];

  if (!pqGetHomeDirectory(homedir, sizeof(homedir)))
   goto next_file;
  snprintf(serviceFile, MAXPGPATH, "%s/%s", homedir, ".pg_service.conf");
  if (stat(serviceFile, &stat_buf) != 0)
   goto next_file;
 }

 status = parseServiceFile(serviceFile, service, options, errorMessage, &group_found);
 if (group_found || status != 0)
  return status;

next_file:





 snprintf(serviceFile, MAXPGPATH, "%s/pg_service.conf",
    getenv("PGSYSCONFDIR") ? getenv("PGSYSCONFDIR") : SYSCONFDIR);
 if (stat(serviceFile, &stat_buf) != 0)
  goto last_file;

 status = parseServiceFile(serviceFile, service, options, errorMessage, &group_found);
 if (status != 0)
  return status;

last_file:
 if (!group_found)
 {
  printfPQExpBuffer(errorMessage,
        libpq_gettext("definition of service \"%s\" not found\n"), service);
  return 3;
 }

 return 0;
}
