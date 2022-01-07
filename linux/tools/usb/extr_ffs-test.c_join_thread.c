
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int filename; int id; } ;


 int debug (char*,int ) ;
 int err (char*,int ) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static void join_thread(struct thread *t)
{
 int ret = pthread_join(t->id, ((void*)0));

 if (ret < 0)
  err("%s: joining thread", t->filename);
 else
  debug("%s: joined\n", t->filename);
}
