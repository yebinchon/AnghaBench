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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {size_t size; int flags; TYPE_1__ buffer; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ php_output_handler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline php_output_handler *FUNC4(zend_string *name, size_t chunk_size, int flags)
{
	php_output_handler *handler;

	handler = FUNC1(1, sizeof(php_output_handler));
	handler->name = FUNC3(name);
	handler->size = chunk_size;
	handler->flags = flags;
	handler->buffer.size = FUNC0(chunk_size);
	handler->buffer.data = FUNC2(handler->buffer.size);

	return handler;
}