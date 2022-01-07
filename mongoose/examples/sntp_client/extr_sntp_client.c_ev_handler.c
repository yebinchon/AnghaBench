
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct mg_sntp_message {int time; } ;
struct mg_connection {int dummy; } ;




 char* ctime (int *) ;
 int fprintf (int ,char*,...) ;
 char* s_default_server ;
 int s_exit_flag ;
 int stderr ;
 int stdout ;
 int time (int *) ;

__attribute__((used)) static void ev_handler(struct mg_connection *c, int ev, void *ev_data) {
  struct mg_sntp_message *sm = (struct mg_sntp_message *) ev_data;
  time_t t;
  (void) c;

  switch (ev) {
    case 128:
      t = time(((void*)0));
      fprintf(stdout, "Local time: %s", ctime(&t));
      t = (time_t) sm->time;
      fprintf(stdout, "Time from %s: %s", s_default_server, ctime(&t));
      s_exit_flag = 1;
      break;
    case 129:
      fprintf(stderr, "Failed to get time\n");
      s_exit_flag = 1;
      break;
  }
}
