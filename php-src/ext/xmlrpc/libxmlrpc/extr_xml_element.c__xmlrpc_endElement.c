
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* current; } ;
typedef TYPE_1__ xml_elem_data ;
struct TYPE_4__ {struct TYPE_4__* parent; int children; } ;


 int Q_PushTail (int *,TYPE_2__*) ;

__attribute__((used)) static void _xmlrpc_endElement(void *userData, const char *name)
{
   xml_elem_data* mydata = (xml_elem_data*)userData;

   if(mydata && mydata->current && mydata->current->parent) {
      Q_PushTail(&mydata->current->parent->children, mydata->current);

      mydata->current = mydata->current->parent;
   }
}
