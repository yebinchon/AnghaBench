
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_mode; } ;
typedef TYPE_1__ zend_stat_t ;
typedef int opt_struct ;
struct TYPE_5__ {scalar_t__ phpinfo_as_text; } ;


 scalar_t__ FAILURE ;
 int MAXPATHLEN ;
 int PHP_CLI_SERVER_LOG_PROCESS ;
 int PHP_VERSION ;
 int SIGINT ;
 int SIGPIPE ;
 int SIG_IGN ;
 int S_ISDIR (int ) ;
 char* VCWD_GETCWD (char*,int) ;
 char* VCWD_GETWD (char*) ;
 scalar_t__ VCWD_REALPATH (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int memmove (char*,char*,size_t) ;
 scalar_t__ php_cli_server_ctor (int *,char const*,char const*,char const*) ;
 int php_cli_server_do_event_loop (int *) ;
 int php_cli_server_dtor (int *) ;
 int php_cli_server_log_level ;
 int php_cli_server_logf (int ,char*,int ,char const*) ;
 int php_cli_server_sigint_handler ;
 int php_getopt (int,char**,int const*,char**,int*,int ,int) ;
 scalar_t__ php_sys_stat (char const*,TYPE_1__*) ;
 TYPE_2__ sapi_module ;
 int server ;
 int signal (int ,int ) ;
 int stderr ;
 size_t strlen (char*) ;
 int zend_signal_init () ;

int do_cli_server(int argc, char **argv)
{
 char *php_optarg = ((void*)0);
 int php_optind = 1;
 int c;
 const char *server_bind_address = ((void*)0);
 extern const opt_struct OPTIONS[];
 const char *document_root = ((void*)0);




 const char *router = ((void*)0);
 char document_root_buf[MAXPATHLEN];

 while ((c = php_getopt(argc, argv, OPTIONS, &php_optarg, &php_optind, 0, 2))!=-1) {
  switch (c) {
   case 'S':
    server_bind_address = php_optarg;
    break;
   case 't':

    document_root = php_optarg;
    break;
   case 'q':
    if (php_cli_server_log_level > 1) {
     php_cli_server_log_level--;
    }
    break;
  }
 }

 if (document_root) {
  zend_stat_t sb;

  if (php_sys_stat(document_root, &sb)) {
   fprintf(stderr, "Directory %s does not exist.\n", document_root);
   return 1;
  }
  if (!S_ISDIR(sb.st_mode)) {
   fprintf(stderr, "%s is not a directory.\n", document_root);
   return 1;
  }
  if (VCWD_REALPATH(document_root, document_root_buf)) {
   document_root = document_root_buf;
  }
 } else {
  char *ret = ((void*)0);






  document_root = ret ? document_root_buf: ".";
 }

 if (argc > php_optind) {
  router = argv[php_optind];
 }

 if (FAILURE == php_cli_server_ctor(&server, server_bind_address, document_root, router)) {
  return 1;
 }
 sapi_module.phpinfo_as_text = 0;

 {
  php_cli_server_logf(
   PHP_CLI_SERVER_LOG_PROCESS,
   "PHP %s Development Server (http://%s) started",
   PHP_VERSION, server_bind_address);
 }
 zend_signal_init();

 php_cli_server_do_event_loop(&server);
 php_cli_server_dtor(&server);
 return 0;
}
