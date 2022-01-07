
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cons_write_ll (char const*,unsigned int const) ;

__attribute__((used)) static inline void __cons_write(const char *obuf, int olen) {
 const unsigned int bucket = 64 * 1024;
 unsigned int i;
 for (i = 0; (i + bucket) < olen; i += bucket) {
  __cons_write_ll (obuf + i, bucket);
 }
 if (i < olen) {
  __cons_write_ll (obuf + i, olen - i);
 }
}
