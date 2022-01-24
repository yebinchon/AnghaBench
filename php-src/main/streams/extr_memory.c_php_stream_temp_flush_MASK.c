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
struct TYPE_4__ {scalar_t__ innerstream; } ;
typedef  TYPE_1__ php_stream_temp_data ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(php_stream *stream)
{
	php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;
	FUNC0(ts != NULL);

	return ts->innerstream ? FUNC1(ts->innerstream) : -1;
}