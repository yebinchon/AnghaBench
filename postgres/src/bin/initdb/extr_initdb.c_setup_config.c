
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int * ai_next; int * ai_addr; int * ai_canonname; scalar_t__ ai_addrlen; scalar_t__ ai_protocol; scalar_t__ ai_socktype; int ai_family; int ai_flags; } ;
typedef int repltok ;
typedef int path ;
typedef int WSADATA ;


 int AF_UNSPEC ;
 int AI_NUMERICHOST ;
 char* AUTHTRUST_WARNING ;
 int BLCKSZ ;



 int DEFAULT_BACKEND_FLUSH_AFTER ;
 int DEFAULT_BGWRITER_FLUSH_AFTER ;
 int DEFAULT_CHECKPOINT_FLUSH_AFTER ;
 int DEFAULT_MAX_WAL_SEGS ;
 int DEFAULT_MIN_WAL_SEGS ;
 char* DEFAULT_PGSOCKET_DIR ;
 int DEF_PGPORT ;
 int MAKEWORD (int,int) ;
 int MAXPGPATH ;
 scalar_t__ PG_DIR_MODE_GROUP ;
 int WSAStartup (int ,int *) ;
 int _ (char*) ;
 char* authmethodhost ;
 char* authmethodlocal ;
 int check_ok () ;
 scalar_t__ chmod (char*,int ) ;
 int conf_file ;
 scalar_t__ default_text_search_config ;
 scalar_t__ default_timezone ;
 char* dynamic_shared_memory_type ;
 char* escape_quotes (scalar_t__) ;
 int exit (int) ;
 int fflush (int ) ;
 char** filter_lines_with_token (char**,char*) ;
 int fputs (int ,int ) ;
 int free (char**) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int hba_file ;
 int ident_file ;
 scalar_t__ lc_messages ;
 scalar_t__ lc_monetary ;
 scalar_t__ lc_numeric ;
 scalar_t__ lc_time ;
 int locale_date_order (scalar_t__) ;
 int n_buffers ;
 int n_connections ;
 char* pg_data ;
 scalar_t__ pg_dir_create_mode ;
 int pg_file_create_mode ;
 int pg_log_error (char*,char*) ;
 char* pg_strdup (char*) ;
 char* pretty_wal_size (int ) ;
 char** readfile (int ) ;
 char** replace_token (char**,char*,char*) ;
 int snprintf (char*,int,char*,...) ;
 int sprintf (char*,char*,char*) ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int writefile (char*,char**) ;

__attribute__((used)) static void
setup_config(void)
{
 char **conflines;
 char repltok[MAXPGPATH];
 char path[MAXPGPATH];
 char *autoconflines[3];

 fputs(_("creating configuration files ... "), stdout);
 fflush(stdout);



 conflines = readfile(conf_file);

 snprintf(repltok, sizeof(repltok), "max_connections = %d", n_connections);
 conflines = replace_token(conflines, "#max_connections = 100", repltok);

 if ((n_buffers * (BLCKSZ / 1024)) % 1024 == 0)
  snprintf(repltok, sizeof(repltok), "shared_buffers = %dMB",
     (n_buffers * (BLCKSZ / 1024)) / 1024);
 else
  snprintf(repltok, sizeof(repltok), "shared_buffers = %dkB",
     n_buffers * (BLCKSZ / 1024));
 conflines = replace_token(conflines, "#shared_buffers = 32MB", repltok);





 snprintf(repltok, sizeof(repltok), "#unix_socket_directories = ''");

 conflines = replace_token(conflines, "#unix_socket_directories = '/tmp'",
         repltok);


 snprintf(repltok, sizeof(repltok), "#port = %d", DEF_PGPORT);
 conflines = replace_token(conflines, "#port = 5432", repltok);



 snprintf(repltok, sizeof(repltok), "min_wal_size = %s",
    pretty_wal_size(DEFAULT_MIN_WAL_SEGS));
 conflines = replace_token(conflines, "#min_wal_size = 80MB", repltok);

 snprintf(repltok, sizeof(repltok), "max_wal_size = %s",
    pretty_wal_size(DEFAULT_MAX_WAL_SEGS));
 conflines = replace_token(conflines, "#max_wal_size = 1GB", repltok);

 snprintf(repltok, sizeof(repltok), "lc_messages = '%s'",
    escape_quotes(lc_messages));
 conflines = replace_token(conflines, "#lc_messages = 'C'", repltok);

 snprintf(repltok, sizeof(repltok), "lc_monetary = '%s'",
    escape_quotes(lc_monetary));
 conflines = replace_token(conflines, "#lc_monetary = 'C'", repltok);

 snprintf(repltok, sizeof(repltok), "lc_numeric = '%s'",
    escape_quotes(lc_numeric));
 conflines = replace_token(conflines, "#lc_numeric = 'C'", repltok);

 snprintf(repltok, sizeof(repltok), "lc_time = '%s'",
    escape_quotes(lc_time));
 conflines = replace_token(conflines, "#lc_time = 'C'", repltok);

 switch (locale_date_order(lc_time))
 {
  case 128:
   strcpy(repltok, "datestyle = 'iso, ymd'");
   break;
  case 130:
   strcpy(repltok, "datestyle = 'iso, dmy'");
   break;
  case 129:
  default:
   strcpy(repltok, "datestyle = 'iso, mdy'");
   break;
 }
 conflines = replace_token(conflines, "#datestyle = 'iso, mdy'", repltok);

 snprintf(repltok, sizeof(repltok),
    "default_text_search_config = 'pg_catalog.%s'",
    escape_quotes(default_text_search_config));
 conflines = replace_token(conflines,
         "#default_text_search_config = 'pg_catalog.simple'",
         repltok);

 if (default_timezone)
 {
  snprintf(repltok, sizeof(repltok), "timezone = '%s'",
     escape_quotes(default_timezone));
  conflines = replace_token(conflines, "#timezone = 'GMT'", repltok);
  snprintf(repltok, sizeof(repltok), "log_timezone = '%s'",
     escape_quotes(default_timezone));
  conflines = replace_token(conflines, "#log_timezone = 'GMT'", repltok);
 }

 snprintf(repltok, sizeof(repltok), "dynamic_shared_memory_type = %s",
    dynamic_shared_memory_type);
 conflines = replace_token(conflines, "#dynamic_shared_memory_type = posix",
         repltok);
 conflines = replace_token(conflines,
         "#effective_io_concurrency = 1",
         "#effective_io_concurrency = 0");
 if (strcmp(authmethodlocal, "scram-sha-256") == 0 ||
  strcmp(authmethodhost, "scram-sha-256") == 0)
 {
  conflines = replace_token(conflines,
          "#password_encryption = md5",
          "password_encryption = scram-sha-256");
 }







 if (pg_dir_create_mode == PG_DIR_MODE_GROUP)
 {
  conflines = replace_token(conflines,
          "#log_file_mode = 0600",
          "log_file_mode = 0640");
 }

 snprintf(path, sizeof(path), "%s/postgresql.conf", pg_data);

 writefile(path, conflines);
 if (chmod(path, pg_file_create_mode) != 0)
 {
  pg_log_error("could not change permissions of \"%s\": %m", path);
  exit(1);
 }







 autoconflines[0] = pg_strdup("# Do not edit this file manually!\n");
 autoconflines[1] = pg_strdup("# It will be overwritten by the ALTER SYSTEM command.\n");
 autoconflines[2] = ((void*)0);

 sprintf(path, "%s/postgresql.auto.conf", pg_data);

 writefile(path, autoconflines);
 if (chmod(path, pg_file_create_mode) != 0)
 {
  pg_log_error("could not change permissions of \"%s\": %m", path);
  exit(1);
 }

 free(conflines);




 conflines = readfile(hba_file);


 conflines = filter_lines_with_token(conflines, "@remove-line-for-nolocal@");
 conflines = replace_token(conflines,
         "host    all             all             ::1",
         "#host    all             all             ::1");
 conflines = replace_token(conflines,
         "host    replication     all             ::1",
         "#host    replication     all             ::1");



 conflines = replace_token(conflines,
         "@authmethodhost@",
         authmethodhost);
 conflines = replace_token(conflines,
         "@authmethodlocal@",
         authmethodlocal);

 conflines = replace_token(conflines,
         "@authcomment@",
         (strcmp(authmethodlocal, "trust") == 0 || strcmp(authmethodhost, "trust") == 0) ? AUTHTRUST_WARNING : "");

 snprintf(path, sizeof(path), "%s/pg_hba.conf", pg_data);

 writefile(path, conflines);
 if (chmod(path, pg_file_create_mode) != 0)
 {
  pg_log_error("could not change permissions of \"%s\": %m", path);
  exit(1);
 }

 free(conflines);



 conflines = readfile(ident_file);

 snprintf(path, sizeof(path), "%s/pg_ident.conf", pg_data);

 writefile(path, conflines);
 if (chmod(path, pg_file_create_mode) != 0)
 {
  pg_log_error("could not change permissions of \"%s\": %m", path);
  exit(1);
 }

 free(conflines);

 check_ok();
}
