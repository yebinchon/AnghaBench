
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_connection {int flags; } ;
struct TYPE_4__ {int len; int p; } ;
struct TYPE_3__ {int len; int p; } ;
struct http_message {TYPE_2__ body; TYPE_1__ message; } ;





 int MG_F_CLOSE_IMMEDIATELY ;
 int fprintf (int ,char*,char*) ;
 int fwrite (int ,int,int ,int ) ;
 int printf (char*) ;
 int putchar (char) ;
 int s_exit_flag ;
 int s_show_headers ;
 int stderr ;
 int stdout ;
 char* strerror (int) ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;

  switch (ev) {
    case 129:
      if (*(int *) ev_data != 0) {
        fprintf(stderr, "connect() failed: %s\n", strerror(*(int *) ev_data));
        s_exit_flag = 1;
      }
      break;
    case 128:
      nc->flags |= MG_F_CLOSE_IMMEDIATELY;
      if (s_show_headers) {
        fwrite(hm->message.p, 1, hm->message.len, stdout);
      } else {
        fwrite(hm->body.p, 1, hm->body.len, stdout);
      }
      putchar('\n');
      s_exit_flag = 1;
      break;
    case 130:
      if (s_exit_flag == 0) {
        printf("Server closed connection\n");
        s_exit_flag = 1;
      }
      break;
    default:
      break;
  }
}
