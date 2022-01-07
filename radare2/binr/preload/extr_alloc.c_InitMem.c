
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ allocated_mem ;
 char* heap_end ;
 int max_mem ;
 scalar_t__ mcb_count ;
 char* mem_start_p ;
 int memset (char*,int,int) ;

void InitMem(char *ptr, int size_in_bytes) {

 max_mem = size_in_bytes;
 mem_start_p = ptr;
 mcb_count = 0;
 allocated_mem = 0;
 heap_end = mem_start_p + size_in_bytes;
 memset (mem_start_p, 0x00, max_mem);

}
