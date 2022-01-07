
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {char* (* cb_core_cmdstr ) (int ,char*) ;int (* cb_printf ) (char*,char*) ;int user; } ;
typedef int RSocket ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;


 int * RIORAP_FD (int *) ;
 int RMT_CMD ;
 int RMT_MAX ;
 int RMT_REPLY ;
 unsigned int ST32_MAX ;
 char* calloc (int,unsigned int) ;
 int eprintf (char*,...) ;
 int free (char*) ;
 int memcpy (int*,char const*,int) ;
 int memset (int*,int ,int) ;
 void* r_read_at_be32 (int*,int) ;
 int r_socket_flush (int *) ;
 scalar_t__ r_socket_read (int *,int*,int) ;
 int r_socket_read_block (int *,int*,unsigned int) ;
 int r_socket_write (int *,int*,int) ;
 int r_write_be32 (int*,int) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 char* stub1 (int ,char*) ;
 int stub2 (char*,char*) ;
 unsigned int write (int,char*,unsigned int) ;

__attribute__((used)) static char *__rap_system(RIO *io, RIODesc *fd, const char *command) {
 int ret, reslen = 0, cmdlen = 0;
 RSocket *s = RIORAP_FD (fd);
 unsigned int i;
 char *ptr, *res, *str;
 ut8 buf[RMT_MAX];

 buf[0] = RMT_CMD;
 i = strlen (command) + 1;
 if (i > RMT_MAX - 5) {
  eprintf ("Command too long\n");
  return ((void*)0);
 }
 r_write_be32 (buf + 1, i);
 memcpy (buf + 5, command, i);
 (void)r_socket_write (s, buf, i+5);
 r_socket_flush (s);


 for (;;) {
  ret = r_socket_read_block (s, buf, 1);
  if (ret != 1) {
   return ((void*)0);
  }


  if (buf[0] != RMT_CMD) {
   break;
  }


  buf[0] |= RMT_REPLY;
  memset (buf + 1, 0, 4);
  ret = r_socket_read_block (s, buf + 1, 4);
  if (ret != 4) {
   return ((void*)0);
  }
  cmdlen = r_read_at_be32 (buf, 1);
  if (cmdlen + 1 == 0) {
   cmdlen = 0;
  }
  str = calloc (1, cmdlen + 1);
  ret = r_socket_read_block (s, (ut8*)str, cmdlen);
  eprintf ("RUN %d CMD(%s)\n", ret, str);
  if (str && *str) {
   res = io->cb_core_cmdstr (io->user, str);
  } else {
   res = strdup ("");
  }
  eprintf ("[%s]=>(%s)\n", str, res);
  reslen = strlen (res);
  free (str);
  r_write_be32 (buf + 1, reslen);
  memcpy (buf + 5, res, reslen);
  free (res);
  (void)r_socket_write (s, buf, reslen + 5);
  r_socket_flush (s);
 }


 ret = r_socket_read_block (s, buf + 1, 4);
 if (ret != 4) {
  return ((void*)0);
 }
 if (buf[0] != (RMT_CMD | RMT_REPLY)) {
  eprintf ("Unexpected rap cmd reply\n");
  return ((void*)0);
 }

 i = r_read_at_be32 (buf, 1);
 ret = 0;
 if (i > ST32_MAX) {
  eprintf ("Invalid length\n");
  return ((void*)0);
 }
 ptr = (char *)calloc (1, i + 1);
 if (ptr) {
  int ir, tr = 0;
  do {
   ir = r_socket_read_block (s, (ut8*)ptr + tr, i - tr);
   if (ir < 1) {
    break;
   }
   tr += ir;
  } while (tr < i);

  ptr[i] = 0;
  if (io->cb_printf) {
   io->cb_printf ("%s", ptr);
  } else {
   if (write (1, ptr, i) != i) {
    eprintf ("Failed to write\n");
   }
  }
  free (ptr);
 }






 return ((void*)0);
}
