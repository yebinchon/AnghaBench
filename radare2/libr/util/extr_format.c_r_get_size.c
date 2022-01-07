
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RNum ;


 int r_num_math (int *,char const*) ;
 int strlen (char const*) ;
 int updateAddr (int *,int,int,int*,int *) ;

__attribute__((used)) static int r_get_size(RNum *num, ut8 *buf, int endian, const char *s) {
 int size = 0, len = strlen (s);
 ut64 addr;

 if (s[0] == '*' && len >= 4) {
  int offset = (int)r_num_math (num, s + 1);
  (void)updateAddr (buf + offset, 999, endian, &addr, ((void*)0));
  return addr;
 } else {

  size = r_num_math (num, s);
 }
 return size;
}
