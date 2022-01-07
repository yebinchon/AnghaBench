
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int r_cons_memcat (char const*,int) ;

__attribute__((used)) static int mywrite(const ut8 *buf, int len) {
 return r_cons_memcat ((const char *)buf, len);
}
