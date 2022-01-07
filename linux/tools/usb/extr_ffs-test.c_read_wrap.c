
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int fd; } ;
typedef int ssize_t ;


 int read (int ,void*,size_t) ;

__attribute__((used)) static ssize_t read_wrap(struct thread *t, void *buf, size_t nbytes)
{
 return read(t->fd, buf, nbytes);
}
