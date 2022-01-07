
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;


 int MLOCK_ONFAULT ;
 int RLIMIT_MEMLOCK ;
 int TEST_LOOP ;
 int get_proc_locked_vm_size () ;
 int getrlimit (int ,struct rlimit*) ;
 int mlock (char*,int) ;
 int mlock2_ (char*,int,int ) ;
 int printf (char*,...) ;
 int rand () ;
 int srand (int ) ;
 int time (int *) ;

int test_mlock_outof_limit(char *p, int alloc_size)
{
 int i;
 int ret = 0;
 int locked_vm_size = 0, old_locked_vm_size = 0;
 struct rlimit cur;

 getrlimit(RLIMIT_MEMLOCK, &cur);
 if (cur.rlim_cur >= alloc_size) {
  printf("alloc_size[%d] >%u rlimit, violates test condition\n",
    alloc_size, (unsigned int)cur.rlim_cur);
  return -1;
 }

 old_locked_vm_size = get_proc_locked_vm_size();
 srand(time(((void*)0)));
 for (i = 0; i < TEST_LOOP; i++) {
  int is_mlock = !!(rand() % 2);
  int lock_size = (rand() % (alloc_size - cur.rlim_cur))
   + cur.rlim_cur;
  int start_offset = rand() % (alloc_size - lock_size);

  if (is_mlock)
   ret = mlock(p + start_offset, lock_size);
  else
   ret = mlock2_(p + start_offset, lock_size,
     MLOCK_ONFAULT);
  if (ret == 0) {
   printf("%s() succeeds? on %p(%d) mlock%p(%d)\n",
     is_mlock ? "mlock" : "mlock2",
     p, alloc_size,
     p + start_offset, lock_size);
   return -1;
  }
 }

 locked_vm_size = get_proc_locked_vm_size();
 if (locked_vm_size != old_locked_vm_size) {
  printf("tests leads to new mlocked page: old[%d], new[%d]\n",
    old_locked_vm_size,
    locked_vm_size);
  return -1;
 }

 return 0;
}
