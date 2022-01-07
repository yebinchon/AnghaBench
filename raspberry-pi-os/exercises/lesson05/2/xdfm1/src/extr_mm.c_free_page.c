
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SIZE ;
 scalar_t__* mem_map ;

void free_page(unsigned long p){
 mem_map[p / PAGE_SIZE] = 0;
}
