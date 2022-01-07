
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int htonl (int ) ;
 int sysv_chksm (unsigned char const*,int) ;

__attribute__((used)) static int zyxel_chksm(const unsigned char *data, int size)
{
     return htonl(sysv_chksm(data, size));
}
