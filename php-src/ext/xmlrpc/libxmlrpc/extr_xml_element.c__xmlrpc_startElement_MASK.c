#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* val; void* key; } ;
typedef  TYPE_1__ xml_element_attr ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  attrs; struct TYPE_8__* parent; } ;
typedef  TYPE_2__ xml_element ;
struct TYPE_9__ {TYPE_2__* current; } ;
typedef  TYPE_3__ xml_elem_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 void* FUNC2 (char const*) ; 
 TYPE_2__* FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *userData, const char *name, const char **attrs)
{
   xml_element *c;
   xml_elem_data* mydata = (xml_elem_data*)userData;
   const char** p = attrs;

   if(mydata) {
      c = mydata->current;

      mydata->current = FUNC3();
      mydata->current->name = (char*)FUNC2(name);
      mydata->current->parent = c;

      /* init attrs */
      while(p && *p) {
         xml_element_attr* attr = FUNC1(sizeof(xml_element_attr));
         if(attr) {
            attr->key = FUNC2(*p);
            attr->val = FUNC2(*(p+1));
            FUNC0(&mydata->current->attrs, attr);

            p += 2;
         }
      }
   }
}