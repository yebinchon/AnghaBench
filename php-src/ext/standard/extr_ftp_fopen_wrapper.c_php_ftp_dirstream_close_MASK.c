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
struct TYPE_5__ {TYPE_2__* abstract; } ;
typedef  TYPE_1__ php_stream ;
struct TYPE_6__ {int /*<<< orphan*/ * datastream; int /*<<< orphan*/ * controlstream; } ;
typedef  TYPE_2__ php_ftp_dirstream_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(php_stream *stream, int close_handle)
{
	php_ftp_dirstream_data *data = stream->abstract;

	/* close control connection */
	if (data->controlstream) {
		FUNC1(data->controlstream);
		data->controlstream = NULL;
	}
	/* close data connection */
	FUNC1(data->datastream);
	data->datastream = NULL;

	FUNC0(data);
	stream->abstract = NULL;

	return 0;
}