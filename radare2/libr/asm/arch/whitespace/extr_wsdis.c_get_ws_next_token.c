
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



const ut8 *get_ws_next_token(const ut8 *buf, int len) {
 const ut8 *ret;
 ret = buf;
 while (len - (ret - buf)) {
  switch (*ret) {
  case ' ':
  case '\t':
  case 10:
   return ret;
  }
  ret++;
 }
 return ((void*)0);
}
