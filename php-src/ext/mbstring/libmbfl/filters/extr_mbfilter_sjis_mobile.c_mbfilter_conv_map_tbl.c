
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
mbfilter_conv_map_tbl(int c, int *w, const unsigned short map[][3], int n)
{
 int i, match = 0;

 for (i = 0; i < n; i++) {
  if (map[i][0] <= c && c <= map[i][1]) {
   *w = c - map[i][0] + map[i][2];
   match = 1;
   break;
  }
 }
 return match;
}
