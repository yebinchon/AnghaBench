
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char ut8 ;



__attribute__((used)) static int countChar (const ut8 *buf, int len, char ch) {
 int i;
 for (i = 0; i < len; i++) {
  if (buf[i] != ch) {
   break;
  }
 }
 return i;
}
