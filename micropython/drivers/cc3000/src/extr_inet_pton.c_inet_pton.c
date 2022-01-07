
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAFNOSUPPORT ;
 int SET_ERRNO (int ) ;
 int inet_pton4 (char const*,unsigned char*) ;
 int inet_pton6 (char const*,unsigned char*) ;

int inet_pton(int af, const char *src, void *dst)
{
  switch (af) {
  case 129:
    return (inet_pton4(src, (unsigned char *)dst));




  default:
    SET_ERRNO(EAFNOSUPPORT);
    return (-1);
  }

}
