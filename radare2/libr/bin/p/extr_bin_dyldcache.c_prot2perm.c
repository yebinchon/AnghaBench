
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int prot2perm(int x) {
 int r = 0;
 if (x & 1) {
  r |= 4;
 }
 if (x & 2) {
  r |= 2;
 }
 if (x & 4) {
  r |= 1;
 }
 return r;
}
