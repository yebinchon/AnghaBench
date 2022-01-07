
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_magic_entry {int mp; } ;


 size_t apprentice_r_magic_strength (int ) ;

__attribute__((used)) static int apprentice_sort(const void *a, const void *b) {
 const struct r_magic_entry *ma = a;
 const struct r_magic_entry *mb = b;
 size_t sa = apprentice_r_magic_strength (ma->mp);
 size_t sb = apprentice_r_magic_strength (mb->mp);
 if (sa == sb) {
  return 0;
 }
 if (sa > sb) {
  return -1;
 }
 return 1;
}
