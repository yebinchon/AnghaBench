
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int data_len; float* data; } ;
typedef TYPE_1__ libgdbr_t ;


 int isxdigit (char) ;
 int memcpy (int *,char*,int) ;
 int send_ack (TYPE_1__*) ;
 int sscanf (char*,char*,int*) ;
 char* strchr (char*,char) ;

int handle_vFile_pread(libgdbr_t *g, ut8 *buf) {
 send_ack (g);
 char *ptr;
 int len;
 if (g->data_len < 3 || g->data[0] != 'F') {
  return -1;
 }


 if (g->data[1] == '-') {
  return 0;
 }
 if (!isxdigit (g->data[1])) {
  return -1;
 }
 if (sscanf (g->data, "F%x;", &len) != 1) {
  return -1;
 }

 if (len == 0) {
  return 0;
 }
 if (!(ptr = strchr (g->data, ';')) || ptr >= g->data + g->data_len) {
  return -1;
 }
 ptr++;
 if (len > 0) {
  memcpy (buf, ptr, len);
 }
 return len;
}
