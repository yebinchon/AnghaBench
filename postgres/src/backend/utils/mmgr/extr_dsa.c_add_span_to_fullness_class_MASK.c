#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* dsa_pointer ;
struct TYPE_4__ {int fclass; void* nextspan; void* prevspan; void* pool; } ;
typedef  TYPE_1__ dsa_area_span ;
struct TYPE_5__ {void** spans; } ;
typedef  TYPE_2__ dsa_area_pool ;
typedef  int /*<<< orphan*/  dsa_area ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 void* InvalidDsaPointer ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void
FUNC2(dsa_area *area, dsa_area_span *span,
						   dsa_pointer span_pointer,
						   int fclass)
{
	dsa_area_pool *pool = FUNC1(area, span->pool);

	if (FUNC0(pool->spans[fclass]))
	{
		dsa_area_span *head = FUNC1(area,
											  pool->spans[fclass]);

		head->prevspan = span_pointer;
	}
	span->prevspan = InvalidDsaPointer;
	span->nextspan = pool->spans[fclass];
	pool->spans[fclass] = span_pointer;
	span->fclass = fclass;
}