
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 scalar_t__ isodigit (char const) ;
 scalar_t__ isspace (int ) ;

__attribute__((used)) static int from_oct(int digs, const char *where) {
 int value = 0;
 while (isspace ((ut8)*where)) {
  where++;
  if (--digs <= 0) {
   return -1;
  }
 }
 while (digs > 0 && isodigit(*where)) {
  value = (value << 3) | (*where++ - '0');
  --digs;
 }
 if (digs > 0 && *where && !isspace ((ut8)*where)) {
  return -1;
 }
 return value;
}
