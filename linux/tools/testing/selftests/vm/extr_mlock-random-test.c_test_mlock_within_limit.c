
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;


 int MLOCK_ONFAULT ;
 int PAGE_ALIGN (int,int) ;
 int RLIMIT_MEMLOCK ;
 int TEST_LOOP ;
 int get_proc_locked_vm_size () ;
 int get_proc_page_size (unsigned long) ;
 int getrlimit (int ,struct rlimit*) ;
 int mlock (char*,int) ;
 int mlock2_ (char*,int,int ) ;
 int printf (char*,...) ;
 int rand () ;
 int srand (int ) ;
 int time (int *) ;

int test_mlock_within_limit(char *p, int alloc_size)
{
 int i;
 int ret = 0;
 int locked_vm_size = 0;
 struct rlimit cur;
 int page_size = 0;

 getrlimit(RLIMIT_MEMLOCK, &cur);
 if (cur.rlim_cur < alloc_size) {
  printf("alloc_size[%d] < %u rlimit,lead to mlock failure\n",
    alloc_size, (unsigned int)cur.rlim_cur);
  return -1;
 }

 srand(time(((void*)0)));
 for (i = 0; i < TEST_LOOP; i++) {






  int is_mlock = !!(rand() % 2);
  int lock_size = rand() % alloc_size;
  int start_offset = rand() % (alloc_size - lock_size);

  if (is_mlock)
   ret = mlock(p + start_offset, lock_size);
  else
   ret = mlock2_(p + start_offset, lock_size,
           MLOCK_ONFAULT);

  if (ret) {
   printf("%s() failure at |%p(%d)| mlock:|%p(%d)|\n",
     is_mlock ? "mlock" : "mlock2",
     p, alloc_size,
     p + start_offset, lock_size);
   return ret;
  }
 }




 locked_vm_size = get_proc_locked_vm_size();
 page_size = get_proc_page_size((unsigned long)p);
 if (page_size == 0) {
  printf("cannot get proc MMUPageSize\n");
  return -1;
 }

 if (locked_vm_size > PAGE_ALIGN(alloc_size, page_size) + page_size) {
  printf("test_mlock_within_limit() left VmLck:%d on %d chunk\n",
    locked_vm_size, alloc_size);
  return -1;
 }

 return 0;
}
