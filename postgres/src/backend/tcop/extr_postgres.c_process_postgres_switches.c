
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ProtocolVersion ;
typedef int GucSource ;
typedef scalar_t__ GucContext ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int EchoQuery ;
 int FATAL ;
 int FrontendProtocol ;
 int IsBinaryUpgrade ;
 scalar_t__ IsUnderPostmaster ;
 int MAXPGPATH ;
 int OutputFileName ;
 scalar_t__ PGC_POSTMASTER ;
 int PGC_S_ARGV ;
 int PGC_S_CLIENT ;
 int ParseLongOption (char*,char**,char**) ;
 int SetConfigOption (char const*,char*,scalar_t__,int ) ;
 int UseSemiNewlineNewline ;
 int atoi (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,int ) ;
 int errmsg (char*,char*,...) ;
 int free (char*) ;
 char* get_stats_option_name (char*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ opterr ;
 int optind ;
 int optreset ;
 int progname ;
 int set_debug_options (int ,scalar_t__,int ) ;
 int set_plan_disabling_options (char*,scalar_t__,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 int strlcpy (int ,char*,int ) ;
 void* userDoption ;

void
process_postgres_switches(int argc, char *argv[], GucContext ctx,
        const char **dbname)
{
 bool secure = (ctx == PGC_POSTMASTER);
 int errs = 0;
 GucSource gucsource;
 int flag;

 if (secure)
 {
  gucsource = PGC_S_ARGV;


  if (argc > 1 && strcmp(argv[1], "--single") == 0)
  {
   argv++;
   argc--;
  }
 }
 else
 {
  gucsource = PGC_S_CLIENT;
 }
 while ((flag = getopt(argc, argv, "B:bc:C:D:d:EeFf:h:ijk:lN:nOo:Pp:r:S:sTt:v:W:-:")) != -1)
 {
  switch (flag)
  {
   case 'B':
    SetConfigOption("shared_buffers", optarg, ctx, gucsource);
    break;

   case 'b':

    if (secure)
     IsBinaryUpgrade = 1;
    break;

   case 'C':

    break;

   case 'D':
    if (secure)
     userDoption = strdup(optarg);
    break;

   case 'd':
    set_debug_options(atoi(optarg), ctx, gucsource);
    break;

   case 'E':
    if (secure)
     EchoQuery = 1;
    break;

   case 'e':
    SetConfigOption("datestyle", "euro", ctx, gucsource);
    break;

   case 'F':
    SetConfigOption("fsync", "false", ctx, gucsource);
    break;

   case 'f':
    if (!set_plan_disabling_options(optarg, ctx, gucsource))
     errs++;
    break;

   case 'h':
    SetConfigOption("listen_addresses", optarg, ctx, gucsource);
    break;

   case 'i':
    SetConfigOption("listen_addresses", "*", ctx, gucsource);
    break;

   case 'j':
    if (secure)
     UseSemiNewlineNewline = 1;
    break;

   case 'k':
    SetConfigOption("unix_socket_directories", optarg, ctx, gucsource);
    break;

   case 'l':
    SetConfigOption("ssl", "true", ctx, gucsource);
    break;

   case 'N':
    SetConfigOption("max_connections", optarg, ctx, gucsource);
    break;

   case 'n':

    break;

   case 'O':
    SetConfigOption("allow_system_table_mods", "true", ctx, gucsource);
    break;

   case 'o':
    errs++;
    break;

   case 'P':
    SetConfigOption("ignore_system_indexes", "true", ctx, gucsource);
    break;

   case 'p':
    SetConfigOption("port", optarg, ctx, gucsource);
    break;

   case 'r':

    if (secure)
     strlcpy(OutputFileName, optarg, MAXPGPATH);
    break;

   case 'S':
    SetConfigOption("work_mem", optarg, ctx, gucsource);
    break;

   case 's':
    SetConfigOption("log_statement_stats", "true", ctx, gucsource);
    break;

   case 'T':

    break;

   case 't':
    {
     const char *tmp = get_stats_option_name(optarg);

     if (tmp)
      SetConfigOption(tmp, "true", ctx, gucsource);
     else
      errs++;
     break;
    }

   case 'v':
    if (secure)
     FrontendProtocol = (ProtocolVersion) atoi(optarg);
    break;

   case 'W':
    SetConfigOption("post_auth_delay", optarg, ctx, gucsource);
    break;

   case 'c':
   case '-':
    {
     char *name,
          *value;

     ParseLongOption(optarg, &name, &value);
     if (!value)
     {
      if (flag == '-')
       ereport(ERROR,
         (errcode(ERRCODE_SYNTAX_ERROR),
          errmsg("--%s requires a value",
           optarg)));
      else
       ereport(ERROR,
         (errcode(ERRCODE_SYNTAX_ERROR),
          errmsg("-c %s requires a value",
           optarg)));
     }
     SetConfigOption(name, value, ctx, gucsource);
     free(name);
     if (value)
      free(value);
     break;
    }

   default:
    errs++;
    break;
  }

  if (errs)
   break;
 }




 if (!errs && dbname && *dbname == ((void*)0) && argc - optind >= 1)
  *dbname = strdup(argv[optind++]);

 if (errs || argc != optind)
 {
  if (errs)
   optind--;


  if (IsUnderPostmaster)
   ereport(FATAL,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("invalid command-line argument for server process: %s", argv[optind]),
      errhint("Try \"%s --help\" for more information.", progname)));
  else
   ereport(FATAL,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("%s: invalid command-line argument: %s",
       progname, argv[optind]),
      errhint("Try \"%s --help\" for more information.", progname)));
 }





 optind = 1;



}
