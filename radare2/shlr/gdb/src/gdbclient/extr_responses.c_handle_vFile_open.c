
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_len; float* data; int remote_file_fd; } ;
typedef TYPE_1__ libgdbr_t ;


 int isxdigit (char) ;
 int send_ack (TYPE_1__*) ;
 int strtol (char*,int *,int) ;

int handle_vFile_open(libgdbr_t *g) {
 if (g->data_len < 2 || g->data[0] != 'F' || g->data[1] == '-'
     || !isxdigit (g->data[1])) {
  send_ack (g);
  return -1;
 }
 g->data[g->data_len] = '\0';
 if ((g->remote_file_fd = strtol (g->data + 1, ((void*)0), 16)) <= 0) {
  send_ack (g);
  return -1;
 }
 return send_ack (g);
}
