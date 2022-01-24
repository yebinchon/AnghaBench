#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  text; int /*<<< orphan*/  attrs; int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ xml_element ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

xml_element* FUNC4() {
   xml_element* elem = FUNC1(1, sizeof(xml_element));
   if(elem) {
      FUNC0(&elem->children);
      FUNC0(&elem->attrs);
      FUNC3(&elem->text);

      /* init empty string in case we don't find any char data */
      FUNC2(&elem->text, "", 0);
   }
   return elem;
}