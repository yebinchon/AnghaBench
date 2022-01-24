#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gs_index_buffer {int /*<<< orphan*/ * data; scalar_t__ dynamic; int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_DYNAMIC_DRAW ; 
 int /*<<< orphan*/  GL_ELEMENT_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_STATIC_DRAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct gs_index_buffer *ib)
{
	GLenum usage = ib->dynamic ? GL_DYNAMIC_DRAW : GL_STATIC_DRAW;
	bool success;

	success = FUNC1(GL_ELEMENT_ARRAY_BUFFER, &ib->buffer,
				   ib->size, ib->data, usage);

	if (!ib->dynamic) {
		FUNC0(ib->data);
		ib->data = NULL;
	}

	return success;
}