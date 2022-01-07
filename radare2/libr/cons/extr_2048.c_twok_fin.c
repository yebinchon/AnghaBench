
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__** twok_buf ;

__attribute__((used)) static bool twok_fin() {
 int i, j;
 for (i = 0; i < 4; i++) {
  for (j = 0; j < 4; j++) {
   if (!twok_buf[i][j]) {
    return 1;
   }
  }
 }
 for (i = 0; i < 4; i++) {
  for (j = 0; j < 3; j++) {
   if (twok_buf[i][j] == twok_buf[i][j + 1]) {
    return 1;
   }
  }
 }
 for (i = 0; i < 3; i++) {
  for (j = 0; j < 4; j++) {
   if (twok_buf[i][j] == twok_buf[i + 1][j]) {
    return 1;
   }
  }
 }
 return 0;
}
