
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool maskMatches(int perm, int mask, bool only) {
 if (mask) {
  if (only) {
   return ((perm & 7) != mask);
  }
  return (perm & mask) != mask;
 }
 return 0;
}
