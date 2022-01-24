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
typedef  int /*<<< orphan*/  zend_shared_segment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mapping_base ; 
 int /*<<< orphan*/ * memfile ; 
 int /*<<< orphan*/ * memory_mutex ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(zend_shared_segment *shared_segment)
{
	FUNC2();
	if (mapping_base) {
		FUNC1(mapping_base);
		mapping_base = NULL;
	}
	FUNC0(memfile);
	memfile = NULL;
	FUNC3();
	FUNC0(memory_mutex);
	memory_mutex = NULL;
	return 0;
}