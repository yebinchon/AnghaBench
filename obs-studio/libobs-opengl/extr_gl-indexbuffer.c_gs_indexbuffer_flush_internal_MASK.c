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
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; int /*<<< orphan*/  dynamic; } ;
typedef  TYPE_1__ gs_indexbuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ELEMENT_ARRAY_BUFFER ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(gs_indexbuffer_t *ib,
						 const void *data)
{
	if (!ib->dynamic) {
		FUNC0(LOG_ERROR, "Index buffer is not dynamic");
		goto fail;
	}

	if (!FUNC1(GL_ELEMENT_ARRAY_BUFFER, ib->buffer, data, ib->size))
		goto fail;

	return;

fail:
	FUNC0(LOG_ERROR, "gs_indexbuffer_flush (GL) failed");
}