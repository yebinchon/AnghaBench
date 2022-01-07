
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t countMatching (const char *a, const char *b) {
 size_t matches = 0;
 for (; *a && *b; a++, b++) {
  if (*a != *b) {
   break;
  }
  matches++;
 }
 return matches;
}
