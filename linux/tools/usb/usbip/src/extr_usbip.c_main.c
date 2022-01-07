
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
struct TYPE_3__ {int * name; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LOG_PID ;
 int LOG_USER ;
 TYPE_1__* cmds ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;

 int openlog (char*,int ,int ) ;
 int optarg ;
 scalar_t__ opterr ;
 size_t optind ;
 int printf (char*) ;

 int run_command (TYPE_1__*,int,char**) ;
 int strcmp (int *,char*) ;
 int usbip_help (int ,int *) ;
 int usbip_setup_port_number (int ) ;
 int usbip_usage () ;
 int usbip_use_debug ;
 int usbip_use_stderr ;
 int usbip_use_syslog ;

int main(int argc, char *argv[])
{
 static const struct option opts[] = {
  { "debug", 129, ((void*)0), 'd' },
  { "log", 129, ((void*)0), 'l' },
  { "tcp-port", 128, ((void*)0), 't' },
  { ((void*)0), 0, ((void*)0), 0 }
 };

 char *cmd;
 int opt;
 int i, rc = -1;

 usbip_use_stderr = 1;
 opterr = 0;
 for (;;) {
  opt = getopt_long(argc, argv, "+dlt:", opts, ((void*)0));

  if (opt == -1)
   break;

  switch (opt) {
  case 'd':
   usbip_use_debug = 1;
   break;
  case 'l':
   usbip_use_syslog = 1;
   openlog("", LOG_PID, LOG_USER);
   break;
  case 't':
   usbip_setup_port_number(optarg);
   break;
  case '?':
   printf("usbip: invalid option\n");


  default:
   usbip_usage();
   goto out;
  }
 }

 cmd = argv[optind];
 if (cmd) {
  for (i = 0; cmds[i].name != ((void*)0); i++)
   if (!strcmp(cmds[i].name, cmd)) {
    argc -= optind;
    argv += optind;
    optind = 0;
    rc = run_command(&cmds[i], argc, argv);
    goto out;
   }
 }


 usbip_help(0, ((void*)0));
out:
 return (rc > -1 ? EXIT_SUCCESS : EXIT_FAILURE);
}
