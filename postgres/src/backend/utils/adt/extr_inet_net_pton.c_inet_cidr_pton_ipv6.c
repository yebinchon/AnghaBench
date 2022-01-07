
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int EMSGSIZE ;
 int ENOENT ;
 int NS_IN6ADDRSZ ;
 int NS_INADDRSZ ;
 int NS_INT16SZ ;
 int errno ;
 scalar_t__ getbits (char const*,int*) ;
 scalar_t__ getv4 (char const*,int*,int*) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,char,int) ;
 char* strchr (char const*,int) ;

__attribute__((used)) static int
inet_cidr_pton_ipv6(const char *src, u_char *dst, size_t size)
{
 static const char xdigits_l[] = "0123456789abcdef",
    xdigits_u[] = "0123456789ABCDEF";
 u_char tmp[NS_IN6ADDRSZ],
      *tp,
      *endp,
      *colonp;
 const char *xdigits,
      *curtok;
 int ch,
    saw_xdigit;
 u_int val;
 int digits;
 int bits;

 if (size < NS_IN6ADDRSZ)
  goto emsgsize;

 memset((tp = tmp), '\0', NS_IN6ADDRSZ);
 endp = tp + NS_IN6ADDRSZ;
 colonp = ((void*)0);

 if (*src == ':')
  if (*++src != ':')
   goto enoent;
 curtok = src;
 saw_xdigit = 0;
 val = 0;
 digits = 0;
 bits = -1;
 while ((ch = *src++) != '\0')
 {
  const char *pch;

  if ((pch = strchr((xdigits = xdigits_l), ch)) == ((void*)0))
   pch = strchr((xdigits = xdigits_u), ch);
  if (pch != ((void*)0))
  {
   val <<= 4;
   val |= (pch - xdigits);
   if (++digits > 4)
    goto enoent;
   saw_xdigit = 1;
   continue;
  }
  if (ch == ':')
  {
   curtok = src;
   if (!saw_xdigit)
   {
    if (colonp)
     goto enoent;
    colonp = tp;
    continue;
   }
   else if (*src == '\0')
    goto enoent;
   if (tp + NS_INT16SZ > endp)
    goto enoent;
   *tp++ = (u_char) (val >> 8) & 0xff;
   *tp++ = (u_char) val & 0xff;
   saw_xdigit = 0;
   digits = 0;
   val = 0;
   continue;
  }
  if (ch == '.' && ((tp + NS_INADDRSZ) <= endp) &&
   getv4(curtok, tp, &bits) > 0)
  {
   tp += NS_INADDRSZ;
   saw_xdigit = 0;
   break;
  }
  if (ch == '/' && getbits(src, &bits) > 0)
   break;
  goto enoent;
 }
 if (saw_xdigit)
 {
  if (tp + NS_INT16SZ > endp)
   goto enoent;
  *tp++ = (u_char) (val >> 8) & 0xff;
  *tp++ = (u_char) val & 0xff;
 }
 if (bits == -1)
  bits = 128;

 endp = tmp + 16;

 if (colonp != ((void*)0))
 {




  const int n = tp - colonp;
  int i;

  if (tp == endp)
   goto enoent;
  for (i = 1; i <= n; i++)
  {
   endp[-i] = colonp[n - i];
   colonp[n - i] = 0;
  }
  tp = endp;
 }
 if (tp != endp)
  goto enoent;




 memcpy(dst, tmp, NS_IN6ADDRSZ);

 return bits;

enoent:
 errno = ENOENT;
 return -1;

emsgsize:
 errno = EMSGSIZE;
 return -1;
}
