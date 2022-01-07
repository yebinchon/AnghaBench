
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;


 int EXIT_FAILURE ;
 int ev_handler ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int * mg_connect (struct mg_mgr*,char*,int ) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 char* s_address ;
 char* s_password ;
 char* s_topic ;
 char* s_user_name ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char **argv) {
  struct mg_mgr mgr;
  int i;

  mg_mgr_init(&mgr, ((void*)0));


  for (i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-h") == 0) {
      s_address = argv[++i];
    } else if (strcmp(argv[i], "-u") == 0) {
      s_user_name = argv[++i];
    } else if (strcmp(argv[i], "-t") == 0) {
      s_topic = argv[++i];
    } else if (strcmp(argv[i], "-p") == 0) {
      s_password = argv[++i];
    }
  }

  if (mg_connect(&mgr, s_address, ev_handler) == ((void*)0)) {
    fprintf(stderr, "mg_connect(%s) failed\n", s_address);
    exit(EXIT_FAILURE);
  }

  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
}
