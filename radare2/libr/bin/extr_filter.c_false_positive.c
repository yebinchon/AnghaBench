
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;


 scalar_t__ IS_DIGIT (char const) ;

__attribute__((used)) static bool false_positive(const char *str) {
 int i;
 ut8 bo[0x100];
 int up = 0;
 int lo = 0;
 int ot = 0;
 int di = 0;
 int ln = 0;
 int sp = 0;
 int nm = 0;
 for (i = 0; i < 0x100; i++) {
  bo[i] = 0;
 }
 for (i = 0; str[i]; i++) {
  if (IS_DIGIT (str[i])) {
   nm++;
  } else if (str[i]>='a' && str[i]<='z') {
   lo++;
  } else if (str[i]>='A' && str[i]<='Z') {
   up++;
  } else {
   ot++;
  }
  if (str[i]=='\\') {
   ot++;
  }
  if (str[i]==' ') {
   sp++;
  }
  bo[(ut8)str[i]] = 1;
  ln++;
 }
 for (i = 0; i<0x100; i++) {
  if (bo[i]) {
   di++;
  }
 }
 if (ln > 2 && str[0] != '_') {
  if (ln < 10) {
   return 1;
  }
  if (ot >= (nm + up + lo)) {
   return 1;
  }
  if (lo < 3) {
   return 1;
  }
 }
 return 0;
}
