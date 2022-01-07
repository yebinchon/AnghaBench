
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static inline int my_ether_ntoa(unsigned char *ea, char *buf)
{
 return sprintf(buf, "%02x:%02x:%02x:%02x:%02x:%02x",
  ea[0], ea[1], ea[2], ea[3], ea[4], ea[5]);
}
