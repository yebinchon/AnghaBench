
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_data {int fail; int num_timer; int num_close; int num_send; int num_recv; int num_connect; int num_accept; } ;
 int sprintf (char*,char*,int) ;
 int strcat (int ,char*) ;

__attribute__((used)) static void count_events(struct simple_data *d, int ev) {
  switch (ev) {
    case 131:
      break;
    case 134:
      d->num_accept++;
      break;
    case 132:
      d->num_connect++;
      break;
    case 130:
      d->num_recv++;
      break;
    case 129:
      d->num_send++;
      break;
    case 133:
      d->num_close++;
      break;
    case 128:
      d->num_timer++;
      break;
    default: {
      char msg[100];
      sprintf(msg, "(unexpected event: %d)", ev);
      strcat(d->fail, msg);
    }
  }
}
