
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MMU_PTE_FLAGS ;
 unsigned long PAGE_SHIFT ;
 int PTRS_PER_TABLE ;

void map_table_entry(unsigned long *pte, unsigned long va, unsigned long pa) {
 unsigned long index = va >> PAGE_SHIFT;
 index = index & (PTRS_PER_TABLE - 1);
 unsigned long entry = pa | MMU_PTE_FLAGS;
 pte[index] = entry;
}
