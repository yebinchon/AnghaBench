
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* switchname; int configname; } ;
struct TYPE_5__ {char* name; char* setting; } ;
typedef TYPE_1__ ConfigData ;


 int MAXPGPATH ;
 int PG_TEXTDOMAIN (char*) ;
 char* _ (char*) ;
 int advice () ;
 int exit (int) ;
 scalar_t__ find_my_exec (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 TYPE_1__* get_configdata (char*,size_t*) ;
 char* get_progname (char*) ;
 int help () ;
 TYPE_3__* info_items ;
 int printf (char*,char*,char*) ;
 char* progname ;
 int set_pglocale_pgservice (char*,int ) ;
 int show_item (int ,TYPE_1__*,size_t) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int
main(int argc, char **argv)
{
 ConfigData *configdata;
 size_t configdata_len;
 char my_exec_path[MAXPGPATH];
 int i;
 int j;

 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pg_config"));

 progname = get_progname(argv[0]);


 for (i = 1; i < argc; i++)
 {
  if (strcmp(argv[i], "--help") == 0 || strcmp(argv[i], "-?") == 0)
  {
   help();
   exit(0);
  }
 }

 if (find_my_exec(argv[0], my_exec_path) < 0)
 {
  fprintf(stderr, _("%s: could not find own program executable\n"), progname);
  exit(1);
 }

 configdata = get_configdata(my_exec_path, &configdata_len);

 if (argc < 2)
 {
  for (i = 0; i < configdata_len; i++)
   printf("%s = %s\n", configdata[i].name, configdata[i].setting);
  exit(0);
 }


 for (i = 1; i < argc; i++)
 {
  for (j = 0; info_items[j].switchname != ((void*)0); j++)
  {
   if (strcmp(argv[i], info_items[j].switchname) == 0)
   {
    show_item(info_items[j].configname,
        configdata, configdata_len);
    break;
   }
  }
  if (info_items[j].switchname == ((void*)0))
  {
   fprintf(stderr, _("%s: invalid argument: %s\n"),
     progname, argv[i]);
   advice();
   exit(1);
  }
 }

 return 0;
}
