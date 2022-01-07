
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long VA_START ;
 unsigned long get_free_page () ;
 int map_page (struct task_struct*,unsigned long,unsigned long) ;

unsigned long allocate_user_page(struct task_struct *task, unsigned long va) {
 unsigned long page = get_free_page();
 if (page == 0) {
  return 0;
 }
 map_page(task, va, page);
 return page + VA_START;
}
