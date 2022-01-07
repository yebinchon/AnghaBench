
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int dprintf1 (char*,int,int *,int ) ;

void dump_mem(void *dumpme, int len_bytes)
{
 char *c = (void *)dumpme;
 int i;

 for (i = 0; i < len_bytes; i += sizeof(u64)) {
  u64 *ptr = (u64 *)(c + i);
  dprintf1("dump[%03d][@%p]: %016jx\n", i, ptr, *ptr);
 }
}
