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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  php_stream_filter_ops ;
typedef  int /*<<< orphan*/  php_stream_filter ;
struct TYPE_3__ {int /*<<< orphan*/  persistent; scalar_t__ chunk_size; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ php_chunked_filter_data ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK_SIZE_START ; 
 int /*<<< orphan*/  chunked_filter_ops ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static php_stream_filter *FUNC3(const char *filtername, zval *filterparams, uint8_t persistent)
{
	const php_stream_filter_ops *fops = NULL;
	php_chunked_filter_data *data;

	if (FUNC2(filtername, "dechunk")) {
		return NULL;
	}

	/* Create this filter */
	data = (php_chunked_filter_data *)FUNC0(1, sizeof(php_chunked_filter_data), persistent);
	data->state = CHUNK_SIZE_START;
	data->chunk_size = 0;
	data->persistent = persistent;
	fops = &chunked_filter_ops;

	return FUNC1(fops, data, persistent);
}