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
typedef  size_t ssize_t ;
struct TYPE_4__ {int mode; scalar_t__ fpos; scalar_t__ fsize; char* data; } ;
typedef  TYPE_1__ php_stream_memory_data ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 int TEMP_STREAM_APPEND ; 
 int TEMP_STREAM_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static ssize_t FUNC4(php_stream *stream, const char *buf, size_t count)
{
	php_stream_memory_data *ms = (php_stream_memory_data*)stream->abstract;
	FUNC0(ms != NULL);

	if (ms->mode & TEMP_STREAM_READONLY) {
		return (ssize_t) -1;
	} else if (ms->mode & TEMP_STREAM_APPEND) {
		ms->fpos = ms->fsize;
	}
	if (ms->fpos + count > ms->fsize) {
		char *tmp;
		if (!ms->data) {
			tmp = FUNC1(ms->fpos + count);
		} else {
			tmp = FUNC2(ms->data, ms->fpos + count);
		}
		ms->data = tmp;
		ms->fsize = ms->fpos + count;
	}
	if (!ms->data)
		count = 0;
	if (count) {
		FUNC0(buf!= NULL);
		FUNC3(ms->data+ms->fpos, (char*)buf, count);
		ms->fpos += count;
	}
	return count;
}