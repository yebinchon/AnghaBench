#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* name; void* classname; } ;
typedef  TYPE_1__ RBinSymbol ;

/* Variables and functions */
 void* FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(char *class_name, char *read_name, RBinSymbol *sym) {
	if (!class_name) {
		class_name = "";
	}
	sym->classname = FUNC0 (class_name);
	sym->name = FUNC0 (read_name);
}