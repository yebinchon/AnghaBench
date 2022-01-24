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
struct TYPE_4__ {scalar_t__ used; } ;
struct TYPE_5__ {TYPE_1__ buffer; } ;
typedef  TYPE_2__ php_output_handler ;
typedef  int /*<<< orphan*/  php_output_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void *h, void *c)
{
	php_output_handler *handler = *(php_output_handler **) h;
	php_output_context *context = (php_output_context *) c;

	handler->buffer.used = 0;
	FUNC1(handler, context);
	FUNC0(context);
	return 0;
}