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
typedef  int ssize_t ;
struct TYPE_3__ {int eof; } ;
typedef  TYPE_1__ php_stream ;

/* Variables and functions */

__attribute__((used)) static ssize_t FUNC0(php_stream *stream, char *buf, size_t count) /* {{{ */
{
	stream->eof = 1;
	return -1;
}