
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int CLONE_SIGHAND ;
 int CLONE_THREAD ;
 int CLONE_VM ;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int _SC_PAGESIZE ;
 int assert (int) ;
 scalar_t__ clone (int (*) (void*),void*,int,void*) ;
 int f (void*) ;
 void* mmap (int *,int,int,int,int,int ) ;
 int pause () ;
 int sysconf (int ) ;

int main(void)
{
 const int PAGE_SIZE = sysconf(_SC_PAGESIZE);
 pid_t pid;
 void *stack;


 f((void *)0);

 stack = mmap(((void*)0), 2 * PAGE_SIZE, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
 assert(stack != MAP_FAILED);

 pid = clone(f, stack + PAGE_SIZE, CLONE_THREAD|CLONE_SIGHAND|CLONE_VM, (void *)1);
 assert(pid > 0);
 pause();

 return 0;
}
