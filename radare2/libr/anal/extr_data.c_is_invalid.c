
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int memcmp (int const*,char*,int) ;

__attribute__((used)) static int is_invalid(const ut8 *buf, int size) {
 if (size < 1) {
  return 1;
 }
 if (size > 8) {
  size = 8;
 }
 return (!memcmp (buf, "\xff\xff\xff\xff\xff\xff\xff\xff", size))? 1: 0;
}
