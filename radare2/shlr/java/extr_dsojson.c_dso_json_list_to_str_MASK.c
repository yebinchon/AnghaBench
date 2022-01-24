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
struct TYPE_3__ {scalar_t__ json_list; } ;
typedef  TYPE_1__ DsoJsonList ;

/* Variables and functions */
 char* FUNC0 (scalar_t__,int) ; 
 char* FUNC1 (char*) ; 

char * FUNC2 (DsoJsonList *list) {
	if (list && list->json_list) {
		return FUNC0 (list->json_list, 1);
	}
	return FUNC1 ("[]");
}