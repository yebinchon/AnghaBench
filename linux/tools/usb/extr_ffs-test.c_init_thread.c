
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ fd; int filename; int buf; int buf_size; } ;


 int O_RDWR ;
 int die_on (int,char*,...) ;
 int malloc (int ) ;
 scalar_t__ open (int ,int ) ;

__attribute__((used)) static void init_thread(struct thread *t)
{
 t->buf = malloc(t->buf_size);
 die_on(!t->buf, "malloc");

 t->fd = open(t->filename, O_RDWR);
 die_on(t->fd < 0, "%s", t->filename);
}
