
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct signal_info {struct signal_info* next; TYPE_1__ func; } ;
struct TYPE_5__ {struct signal_info* first; } ;
typedef TYPE_2__ signal_handler_t ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct signal_info *getsignal(signal_handler_t *handler,
         const char *name,
         struct signal_info **p_last)
{
 struct signal_info *signal, *last = ((void*)0);

 signal = handler->first;
 while (signal != ((void*)0)) {
  if (strcmp(signal->func.name, name) == 0)
   break;

  last = signal;
  signal = signal->next;
 }

 if (p_last)
  *p_last = last;
 return signal;
}
