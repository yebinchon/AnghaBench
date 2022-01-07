
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int filename; int id; } ;


 int debug (char*,int ) ;
 int die_on (int,char*,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,struct thread*) ;
 int start_thread_helper ;

__attribute__((used)) static void start_thread(struct thread *t)
{
 debug("%s: starting\n", t->filename);

 die_on(pthread_create(&t->id, ((void*)0), start_thread_helper, t) < 0,
        "pthread_create(%s)", t->filename);
}
