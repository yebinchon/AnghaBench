#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pLinkedList_t ;
typedef  TYPE_2__* pFileCache_t ;
struct TYPE_6__ {TYPE_1__* list; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1 (pFileCache_t cache) {
	pLinkedList_t this = cache->list, next;

	while (this != NULL) {
		next = this->next;
		FUNC0 (this);
		this = next;
	}
}