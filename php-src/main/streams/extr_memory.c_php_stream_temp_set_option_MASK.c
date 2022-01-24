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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_4__ {int /*<<< orphan*/  innerstream; int /*<<< orphan*/  meta; } ;
typedef  TYPE_1__ php_stream_temp_data ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  IS_UNDEF ; 
#define  PHP_STREAM_OPTION_META_DATA_API 128 
 int PHP_STREAM_OPTION_RETURN_NOTIMPL ; 
 int PHP_STREAM_OPTION_RETURN_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zval_add_ref ; 

__attribute__((used)) static int FUNC5(php_stream *stream, int option, int value, void *ptrparam) /* {{{ */
{
	php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;

	switch(option) {
		case PHP_STREAM_OPTION_META_DATA_API:
			if (FUNC2(ts->meta) != IS_UNDEF) {
				FUNC4(FUNC1((zval*)ptrparam), FUNC0(ts->meta), zval_add_ref);
			}
			return PHP_STREAM_OPTION_RETURN_OK;
		default:
			if (ts->innerstream) {
				return FUNC3(ts->innerstream, option, value, ptrparam);
			}
			return PHP_STREAM_OPTION_RETURN_NOTIMPL;
	}
}