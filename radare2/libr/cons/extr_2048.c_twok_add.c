
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_num_rand (int) ;
 int** twok_buf ;

__attribute__((used)) static void twok_add() {
 int i, j;
 while (1) {
  i = r_num_rand (4);
  j = r_num_rand (4);
  if (!twok_buf[i][j]) {
   twok_buf[i][j] = 1 + (r_num_rand (10) == 1);
   break;
  }
 }
}
