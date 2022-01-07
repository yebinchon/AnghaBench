
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int hamdist(int x, int y) {
 int dist = 0, val = x ^ y;
 while (val) {
  dist++;
  val &= val - 1;
 }
 return dist;
}
