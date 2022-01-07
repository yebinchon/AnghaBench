
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RSocket ;


 int __socket_slurp (int *,int *,int) ;
 int atoi (char const*) ;
 char* calloc (int,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int r_return_val_if_fail (int *,int *) ;
 int r_socket_close (int *) ;
 int r_socket_read_block (int *,int *,int) ;
 char* r_str_casestr (char*,char*) ;

__attribute__((used)) static char *r_socket_http_answer (RSocket *s, int *code, int *rlen) {
 r_return_val_if_fail (s, ((void*)0));
 const char *p;
 int ret, len = 0, bufsz = 32768, delta = 0;
 char *dn, *buf = calloc (1, bufsz + 32);
 if (!buf) {
  return ((void*)0);
 }
 char *res = ((void*)0);
 int olen = __socket_slurp (s, (ut8*)buf, bufsz);
 if ((dn = (char*)r_str_casestr (buf, "\n\n"))) {
  delta += 2;
 } else if ((dn = (char*)r_str_casestr (buf, "\r\n\r\n"))) {
  delta += 4;
 } else {
  goto fail;
 }

 olen -= delta;
 *dn = 0;

 p = r_str_casestr (buf, "Content-Length: ");
 if (p) {
  len = atoi (p + 16);
 } else {
  len = olen - (dn - buf);
 }
 if (len > 0) {
  if (len > olen) {
   res = malloc (len + 2);
   memcpy (res, dn + delta, olen);
   do {
    ret = r_socket_read_block (s, (ut8*) res + olen, len - olen);
    if (ret < 1) {
     break;
    }
    olen += ret;
   } while (olen < len);
   res[len] = 0;
  } else {
   res = malloc (len + 1);
   if (res) {
    memcpy (res, dn + delta, len);
    res[len] = 0;
   }
  }
 } else {
  res = ((void*)0);
 }
fail:
 free (buf);

 r_socket_close (s);
 if (rlen) {
  *rlen = len;
 }
 return res;
}
