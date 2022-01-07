
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_request {unsigned long member_0; } ;
struct mg_connection {int * user_data; } ;
typedef int req ;





 int perror (char*) ;
 scalar_t__ s_next_id ;
 int * sock ;
 int write (int ,struct work_request*,int) ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *ev_data) {
  (void) nc;
  (void) ev_data;

  switch (ev) {
    case 130:
      nc->user_data = (void *)++s_next_id;
      break;
    case 128: {
      struct work_request req = {(unsigned long)nc->user_data};

      if (write(sock[0], &req, sizeof(req)) < 0)
        perror("Writing worker sock");
      break;
    }
    case 129: {
      if (nc->user_data) nc->user_data = ((void*)0);
    }
  }
}
