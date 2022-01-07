
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uffd_msg {int dummy; } ;


 int pthread_mutex_unlock (int *) ;
 int uffd ;
 scalar_t__ uffd_handle_page_fault (struct uffd_msg*) ;
 scalar_t__ uffd_read_msg (int ,struct uffd_msg*) ;
 int uffd_read_mutex ;

__attribute__((used)) static void *uffd_read_thread(void *arg)
{
 unsigned long *this_cpu_userfaults;
 struct uffd_msg msg;

 this_cpu_userfaults = (unsigned long *) arg;
 *this_cpu_userfaults = 0;

 pthread_mutex_unlock(&uffd_read_mutex);


 for (;;) {
  if (uffd_read_msg(uffd, &msg))
   continue;
  (*this_cpu_userfaults) += uffd_handle_page_fault(&msg);
 }
 return (void *)((void*)0);
}
