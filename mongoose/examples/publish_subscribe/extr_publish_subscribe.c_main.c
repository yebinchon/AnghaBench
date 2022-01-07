
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {struct mg_connection* user_data; int flags; } ;
typedef int sock_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MG_F_USER_1 ;
 int MG_F_USER_2 ;
 int SOCK_STREAM ;
 int client_handler ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 struct mg_connection* mg_add_sock (struct mg_mgr*,int ,int ) ;
 int mg_bind (struct mg_mgr*,char*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_socketpair (int *,int ) ;
 int mg_start_thread (int ,int *) ;
 int printf (char*,char*) ;
 int server_handler ;
 int stderr ;
 int stdin_thread ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[]) {
  struct mg_mgr mgr;

  if (argc != 3) {
    fprintf(stderr, "Usage: %s <port> <client|server>\n", argv[0]);
    exit(EXIT_FAILURE);
  } else if (strcmp(argv[2], "client") == 0) {
    sock_t fds[2];
    struct mg_connection *ioconn, *server_conn;

    mg_mgr_init(&mgr, ((void*)0));


    server_conn = mg_connect(&mgr, argv[1], client_handler);
    if (server_conn == ((void*)0)) {
      fprintf(stderr, "Cannot connect to port %s\n", argv[1]);
      exit(EXIT_FAILURE);
    }
    server_conn->flags |= MG_F_USER_2;


    mg_socketpair(fds, SOCK_STREAM);
    mg_start_thread(stdin_thread, &fds[1]);


    ioconn = mg_add_sock(&mgr, fds[0], client_handler);
    ioconn->flags |= MG_F_USER_1;
    ioconn->user_data = server_conn;

  } else {

    mg_mgr_init(&mgr, ((void*)0));
    mg_bind(&mgr, argv[1], server_handler);
    printf("Starting pubsub server on port %s\n", argv[1]);
  }

  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return EXIT_SUCCESS;
}
