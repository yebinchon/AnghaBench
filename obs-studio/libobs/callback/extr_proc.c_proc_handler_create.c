
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handler {int procs; } ;
typedef struct proc_handler proc_handler_t ;


 struct proc_handler* bmalloc (int) ;
 int da_init (int ) ;

proc_handler_t *proc_handler_create(void)
{
 struct proc_handler *handler = bmalloc(sizeof(struct proc_handler));
 da_init(handler->procs);
 return handler;
}
