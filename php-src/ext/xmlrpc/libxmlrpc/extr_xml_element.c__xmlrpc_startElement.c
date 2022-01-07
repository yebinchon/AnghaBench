
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* val; void* key; } ;
typedef TYPE_1__ xml_element_attr ;
struct TYPE_8__ {char* name; int attrs; struct TYPE_8__* parent; } ;
typedef TYPE_2__ xml_element ;
struct TYPE_9__ {TYPE_2__* current; } ;
typedef TYPE_3__ xml_elem_data ;


 int Q_PushTail (int *,TYPE_1__*) ;
 TYPE_1__* emalloc (int) ;
 void* estrdup (char const*) ;
 TYPE_2__* xml_elem_new () ;

__attribute__((used)) static void _xmlrpc_startElement(void *userData, const char *name, const char **attrs)
{
   xml_element *c;
   xml_elem_data* mydata = (xml_elem_data*)userData;
   const char** p = attrs;

   if(mydata) {
      c = mydata->current;

      mydata->current = xml_elem_new();
      mydata->current->name = (char*)estrdup(name);
      mydata->current->parent = c;


      while(p && *p) {
         xml_element_attr* attr = emalloc(sizeof(xml_element_attr));
         if(attr) {
            attr->key = estrdup(*p);
            attr->val = estrdup(*(p+1));
            Q_PushTail(&mydata->current->attrs, attr);

            p += 2;
         }
      }
   }
}
