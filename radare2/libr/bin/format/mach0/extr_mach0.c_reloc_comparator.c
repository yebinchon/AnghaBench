
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reloc_t {int addr; } ;



__attribute__((used)) static int reloc_comparator(struct reloc_t *a, struct reloc_t *b) {
 return a->addr - b->addr;
}
