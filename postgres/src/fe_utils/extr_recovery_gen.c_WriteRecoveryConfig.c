
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGconn ;
typedef int FILE ;


 int Assert (int ) ;
 int MAXPGPATH ;
 scalar_t__ MINIMUM_VERSION_FOR_RECOVERY_GUC ;
 scalar_t__ PQserverVersion (int *) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (int ,int ,int,int *) ;
 int pg_log_error (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

void
WriteRecoveryConfig(PGconn *pgconn, char *target_dir, PQExpBuffer contents)
{
 char filename[MAXPGPATH];
 FILE *cf;
 bool use_recovery_conf;

 Assert(pgconn != ((void*)0));

 use_recovery_conf =
  PQserverVersion(pgconn) < MINIMUM_VERSION_FOR_RECOVERY_GUC;

 snprintf(filename, MAXPGPATH, "%s/%s", target_dir,
    use_recovery_conf ? "recovery.conf" : "postgresql.auto.conf");

 cf = fopen(filename, use_recovery_conf ? "a" : "w");
 if (cf == ((void*)0))
 {
  pg_log_error("could not open file \"%s\": %m", filename);
  exit(1);
 }

 if (fwrite(contents->data, contents->len, 1, cf) != 1)
 {
  pg_log_error("could not write to file \"%s\": %m", filename);
  exit(1);
 }

 fclose(cf);

 if (!use_recovery_conf)
 {
  snprintf(filename, MAXPGPATH, "%s/%s", target_dir, "standby.signal");
  cf = fopen(filename, "w");
  if (cf == ((void*)0))
  {
   pg_log_error("could not create file \"%s\": %m", filename);
   exit(1);
  }

  fclose(cf);
 }
}
