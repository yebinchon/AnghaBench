
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int EINVAL ;
 int EMSGSIZE ;
 int SPRINTF (char*) ;
 int errno ;

__attribute__((used)) static char *
inet_net_ntop_ipv4(const u_char *src, int bits, char *dst, size_t size)
{
 char *odst = dst;
 char *t;
 int len = 4;
 int b;

 if (bits < 0 || bits > 32)
 {
  errno = EINVAL;
  return (((void*)0));
 }


 for (b = len; b > 0; b--)
 {
  if (size <= sizeof ".255")
   goto emsgsize;
  t = dst;
  if (dst != odst)
   *dst++ = '.';
  dst += SPRINTF((dst, "%u", *src++));
  size -= (size_t) (dst - t);
 }


 if (bits != 32)
 {
  if (size <= sizeof "/32")
   goto emsgsize;
  dst += SPRINTF((dst, "/%u", bits));
 }

 return (odst);

emsgsize:
 errno = EMSGSIZE;
 return (((void*)0));
}
