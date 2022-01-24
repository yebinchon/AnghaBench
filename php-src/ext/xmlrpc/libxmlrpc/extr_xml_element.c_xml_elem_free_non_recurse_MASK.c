#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  text; int /*<<< orphan*/ * name; int /*<<< orphan*/  attrs; int /*<<< orphan*/  children; struct TYPE_7__* val; struct TYPE_7__* key; } ;
typedef  TYPE_1__ xml_element_attr ;
typedef  TYPE_1__ xml_element ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(xml_element* root) {
   if(root) {
      xml_element_attr* attrs = FUNC1(&root->attrs);
      while(attrs) {
         FUNC4(attrs->key);
         FUNC4(attrs->val);
         FUNC4(attrs);
         attrs = FUNC2(&root->attrs);
      }

      FUNC0(&root->children);
      FUNC0(&root->attrs);
      if(root->name) {
          FUNC3((char *)root->name);
          root->name = NULL;
      }
      FUNC5(&root->text);
      FUNC4(root);
   }
}