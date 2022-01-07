
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int data_len; int data; } ;
struct TYPE_6__ {int reg; } ;
typedef TYPE_1__ RDebug ;


 int R_DEBUG_REASON_UNKNOWN ;
 int R_MAX (int,int) ;
 int R_MIN (int,int) ;
 int buf_size ;
 int* calloc (int,int) ;
 int check_connection (TYPE_1__*) ;
 TYPE_3__* desc ;
 int eprintf (char*,int,int) ;
 int free (int ) ;
 int gdbr_read_registers (TYPE_3__*) ;
 int memcpy (void*,int ,int) ;
 int memset (void*,int ,int) ;
 int printf (char*,...) ;
 int r_reg_get_bytes (int ,int,int*) ;
 int* realloc (int*,int) ;
 int* reg_buf ;

__attribute__((used)) static int r_debug_gdb_reg_read(RDebug *dbg, int type, ut8 *buf, int size) {
 int copy_size;
 int buflen = 0;
 check_connection (dbg);
 if (!desc) {
  return R_DEBUG_REASON_UNKNOWN;
 }
 gdbr_read_registers (desc);
 if (!desc || !desc->data) {
  return -1;
 }

 free (r_reg_get_bytes (dbg->reg, type, &buflen));
 if (size < desc->data_len) {
  eprintf ("r_debug_gdb_reg_read: small buffer %d vs %d\n",
   (int)size, (int)desc->data_len);

 }
 copy_size = R_MIN (desc->data_len, size);
 buflen = R_MAX (desc->data_len, buflen);
 if (reg_buf) {

  if (buflen > buf_size) {
   ut8* new_buf = realloc (reg_buf, buflen);
   if (!new_buf) {
    return -1;
   }
   reg_buf = new_buf;
   buf_size = buflen;
  }
 } else {
  reg_buf = calloc (buflen, 1);
  if (!reg_buf) {
   return -1;
  }
  buf_size = buflen;
 }
 memset ((void*)(volatile void*)buf, 0, size);
 memcpy ((void*)(volatile void*)buf, desc->data, R_MIN (copy_size, size));
 memset ((void*)(volatile void*)reg_buf, 0, buflen);
 memcpy ((void*)(volatile void*)reg_buf, desc->data, copy_size);
 return desc->data_len;
}
