
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int fd; } ;
typedef int ssize_t ;


 int write (int ,void const*,size_t) ;

__attribute__((used)) static ssize_t write_wrap(struct thread *t, const void *buf, size_t nbytes)
{
 return write(t->fd, buf, nbytes);
}
