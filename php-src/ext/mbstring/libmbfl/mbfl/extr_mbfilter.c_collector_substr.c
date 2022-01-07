
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct collector_substr_data {scalar_t__ output; scalar_t__ stop; scalar_t__ start; TYPE_1__* next_filter; } ;
struct TYPE_2__ {int (* filter_function ) (int,TYPE_1__*) ;} ;


 int stub1 (int,TYPE_1__*) ;

__attribute__((used)) static int
collector_substr(int c, void* data)
{
 struct collector_substr_data *pc = (struct collector_substr_data*)data;

 if (pc->output >= pc->stop) {
  return -1;
 }

 if (pc->output >= pc->start) {
  (*pc->next_filter->filter_function)(c, pc->next_filter);
 }

 pc->output++;

 return c;
}
