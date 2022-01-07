
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auto_mem {int next; void* pointer; } ;


 scalar_t__ ecpg_alloc (int,int) ;
 int get_auto_allocs () ;
 int set_auto_allocs (struct auto_mem*) ;

bool
ecpg_add_mem(void *ptr, int lineno)
{
 struct auto_mem *am = (struct auto_mem *) ecpg_alloc(sizeof(struct auto_mem), lineno);

 if (!am)
  return 0;

 am->pointer = ptr;
 am->next = get_auto_allocs();
 set_auto_allocs(am);
 return 1;
}
