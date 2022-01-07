
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE_DFLT ;
 int MODE_JSON ;
 int MODE_ZERO ;
 int SDB_OPTION_JOURNAL ;
 int SIGHUP ;
 int SIGINT ;
 int base64decode () ;
 int base64encode () ;
 int createdb (char const*,int *,int ) ;
 int dbdiff (char const*,char const*) ;
 int eprintf (char*,char const*) ;
 int fflush (int ) ;
 int free (char*) ;
 int insertkeys (int ,char const**,int,char) ;
 int jsonIndent () ;
 int options ;
 int s ;
 int save ;
 int sdb_config (int ,int ) ;
 int sdb_dump (char const*,int) ;
 int sdb_grep (char const*,int,char const*) ;
 int sdb_new (int *,char const*,int ) ;
 int sdb_query (int ,char const*) ;
 int showcount (char const*) ;
 int showusage (int) ;
 int showversion () ;
 int signal (int ,int (*) (int)) ;
 char* stdin_slurp (int *) ;
 int stdout ;
 int strcmp (char const*,char*) ;
 int synchronize (int) ;
 int terminate (int) ;
 int write (int,char*,int) ;

int main(int argc, const char **argv) {
 char *line;
 const char *arg, *grep = ((void*)0);
 int i, fmt = MODE_DFLT;
 int db0 = 1, argi = 1;
 bool interactive = 0;


 if (argc < 2) {
  return showusage (1);
 }
 arg = argv[1];

 if (arg[0] == '-') {
  switch (arg[1]) {
  case 0:

   break;
  case '0':
   fmt = MODE_ZERO;
   db0++;
   argi++;
   if (db0 >= argc) {
    return showusage (1);
   }
   break;
  case 'g':
   db0 += 2;
   if (db0 >= argc) {
    return showusage (1);
   }
   grep = argv[2];
   argi += 2;
   break;
  case 'J':
   options |= SDB_OPTION_JOURNAL;
   db0++;
   argi++;
   if (db0 >= argc) {
    return showusage (1);
   }
   break;
  case 'c': return (argc < 3)? showusage (1): showcount (argv[2]);
  case 'v': return showversion ();
  case 'h': return showusage (2);
  case 'e': return base64encode ();
  case 'd': return base64decode ();
  case 'D':
   if (argc == 4) {
    return dbdiff (argv[2], argv[3]) ? 0 : 1;
   }
   return showusage (0);
  case 'j':
   if (argc > 2) {
    return sdb_dump (argv[db0 + 1], MODE_JSON);
   }
   return jsonIndent ();
  default:
   eprintf ("Invalid flag %s\n", arg);
   break;
  }
 }


 if (argi == 1 && !strcmp (argv[argi], "-")) {

  argv[argi] = "";
  if (argc == db0 + 1) {
   interactive = 1;

   argv[argi] = "-";
   argc++;
   argi++;
  }
 }

 if (argc - 1 == db0) {
  if (grep) {
   return sdb_grep (argv[db0], fmt, grep);
  }
  return sdb_dump (argv[db0], fmt);
 }




 int ret = 0;
 if (interactive || !strcmp (argv[db0 + 1], "-")) {
  if ((s = sdb_new (((void*)0), argv[db0], 0))) {
   sdb_config (s, options);
   int kvs = db0 + 2;
   if (kvs < argc) {
    save |= insertkeys (s, argv + argi + 2, argc - kvs, '-');
   }
   for (; (line = stdin_slurp (((void*)0)));) {
    save |= sdb_query (s, line);
    if (fmt) {
     fflush (stdout);
     write (1, "", 1);
    }
    free (line);
   }
  }
 } else if (!strcmp (argv[db0 + 1], "=")) {
  ret = createdb (argv[db0], ((void*)0), 0);
 } else {
  s = sdb_new (((void*)0), argv[db0], 0);
  if (!s) {
   return 1;
  }
  sdb_config (s, options);
  for (i = db0 + 1; i < argc; i++) {
   save |= sdb_query (s, argv[i]);
   if (fmt) {
    fflush (stdout);
    write (1, "", 1);
   }
  }
 }
 terminate (ret);
 return ret;
}
