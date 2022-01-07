
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_pages_count; TYPE_2__* user_pages; } ;
struct task_struct {TYPE_1__ mm; } ;
struct TYPE_4__ {int virt_addr; } ;


 int PAGE_SIZE ;
 unsigned long allocate_user_page (struct task_struct*,int ) ;
 struct task_struct* current ;
 int memcpy (int ,unsigned long,int ) ;

int copy_virt_memory(struct task_struct *dst) {
 struct task_struct* src = current;
 for (int i = 0; i < src->mm.user_pages_count; i++) {
  unsigned long kernel_va = allocate_user_page(dst, src->mm.user_pages[i].virt_addr);
  if( kernel_va == 0) {
   return -1;
  }
  memcpy(src->mm.user_pages[i].virt_addr, kernel_va, PAGE_SIZE);
 }
 return 0;
}
