
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* send_buff; char* read_buff; int registers; scalar_t__ send_len; } ;
typedef TYPE_1__ libqnxr_t ;


 int DS_DATA_MAX_SIZE ;
 int R_FREE (char*) ;
 scalar_t__ calloc (int,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int x86_32 ;

int qnxr_init (libqnxr_t *g) {
 if (!g) return -1;
 memset (g, 0, sizeof (libqnxr_t));
 g->send_len = 0;
 g->send_buff = (char *)calloc (DS_DATA_MAX_SIZE * 2, 1);
 if (!g->send_buff)
  return -1;
 g->read_buff = (char *)calloc (DS_DATA_MAX_SIZE * 2, 1);
 if (!g->read_buff) {
  R_FREE (g->send_buff);
  return -1;
 }
 g->registers = x86_32;
 return 0;
}
