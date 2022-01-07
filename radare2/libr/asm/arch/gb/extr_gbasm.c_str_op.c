
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void str_op(char *c) {
 if ((c[0] <= 'Z') && (c[0] >= 'A')) {
  c[0] += 0x20;
 }
}
