
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ssize_t ;


 int EINVAL ;
 int FONFXC_PAD_LEN ;
 scalar_t__ uimage_verify_default (int *,size_t,int*) ;

__attribute__((used)) static ssize_t uimage_find_fonfxc(u_char *buf, size_t len, int *extralen)
{
 if (uimage_verify_default(buf, len, extralen) < 0)
  return -EINVAL;

 *extralen = FONFXC_PAD_LEN;

 return 0;
}
