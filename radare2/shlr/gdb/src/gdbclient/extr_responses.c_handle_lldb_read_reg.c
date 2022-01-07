
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* read_buff; size_t data_len; int * data; TYPE_1__* registers; } ;
typedef TYPE_2__ libgdbr_t ;
struct TYPE_5__ {size_t offset; size_t size; scalar_t__* name; } ;


 int isxdigit (char) ;
 int memcpy (int *,char*,size_t) ;
 int memset (char*,int ,size_t) ;
 scalar_t__ send_ack (TYPE_2__*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* strtok (int *,char*) ;
 scalar_t__ strtoul (char*,int *,int) ;
 int unpack_hex (char*,int ,char*) ;

int handle_lldb_read_reg(libgdbr_t *g) {
 if (send_ack (g) < 0) {
  return -1;
 }
 char *ptr, *ptr2, *buf;
 size_t regnum, tot_regs, buflen = 0;


 for (regnum = 0; *g->registers[regnum].name; regnum++) {
  if (g->registers[regnum].offset + g->registers[regnum].size > buflen) {
   buflen = g->registers[regnum].offset + g->registers[regnum].size;
  }
 }
 tot_regs = regnum;


 buf = g->read_buff;
 memset (buf, 0, buflen);

 if (!(ptr = strtok (g->data, ";"))) {
  return -1;
 }
 while (ptr) {
  if (!isxdigit (*ptr)) {

   ptr = strtok (((void*)0), ";");
   continue;
  }

  regnum = (int) strtoul (ptr, ((void*)0), 16);
  if (regnum >= tot_regs || !(ptr2 = strchr (ptr, ':'))) {
   ptr = strtok (((void*)0), ";");
   continue;
  }
  ptr2++;

  unpack_hex (ptr2, strlen (ptr2), buf + g->registers[regnum].offset);
  ptr = strtok (((void*)0), ";");
  continue;
 }
 memcpy (g->data, buf, buflen);
 g->data_len = buflen;
 return 0;
}
