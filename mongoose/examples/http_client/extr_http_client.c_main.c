
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {char* hexdump_file; } ;


 int EXIT_FAILURE ;
 int ev_handler ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int mg_connect_http (struct mg_mgr*,int ,char*,int *,int *) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 scalar_t__ s_exit_flag ;
 int s_show_headers ;
 char* s_show_headers_opt ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[]) {
  struct mg_mgr mgr;
  int i;

  mg_mgr_init(&mgr, ((void*)0));


  for (i = 1; i < argc; i++) {
    if (strcmp(argv[i], s_show_headers_opt) == 0) {
      s_show_headers = 1;
    } else if (strcmp(argv[i], "--hexdump") == 0 && i + 1 < argc) {
      mgr.hexdump_file = argv[++i];
    } else {
      break;
    }
  }

  if (i + 1 != argc) {
    fprintf(stderr, "Usage: %s [%s] [--hexdump <file>] <URL>\n", argv[0],
            s_show_headers_opt);
    exit(EXIT_FAILURE);
  }

  mg_connect_http(&mgr, ev_handler, argv[i], ((void*)0), ((void*)0));

  while (s_exit_flag == 0) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
