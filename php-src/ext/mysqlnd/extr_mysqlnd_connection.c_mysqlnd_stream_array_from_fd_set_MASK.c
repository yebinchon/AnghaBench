#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zend_bool ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  php_socket_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_11__ {TYPE_2__* data; } ;
struct TYPE_10__ {TYPE_3__* data; } ;
struct TYPE_9__ {int /*<<< orphan*/  thread_id; TYPE_5__* vio; } ;
struct TYPE_7__ {int /*<<< orphan*/ * (* get_stream ) (TYPE_5__*) ;} ;
struct TYPE_8__ {TYPE_1__ m; } ;
typedef  TYPE_4__ MYSQLND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int PHP_STREAM_AS_FD_FOR_SELECT ; 
 int PHP_STREAM_CAST_INTERNAL ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,void*,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*) ; 

__attribute__((used)) static unsigned int
FUNC7(MYSQLND ** conn_array, fd_set * fds)
{
	php_socket_t this_fd;
	php_stream *stream = NULL;
	unsigned int ret = 0;
	zend_bool disproportion = FALSE;
	MYSQLND **fwd = conn_array, **bckwd = conn_array;
	FUNC0("mysqlnd_stream_array_from_fd_set");

	while (*fwd) {
		stream = (*fwd)->data->vio->data->m.get_stream((*fwd)->data->vio);
		FUNC1("conn=%llu stream=%p", (*fwd)->data->thread_id, stream);
		if (stream != NULL && SUCCESS == FUNC5(stream, PHP_STREAM_AS_FD_FOR_SELECT | PHP_STREAM_CAST_INTERNAL,
										(void*)&this_fd, 1) && FUNC4(this_fd)) {
			if (FUNC3(this_fd, fds)) {
				if (disproportion) {
					*bckwd = *fwd;
				}
				++bckwd;
				++fwd;
				++ret;
				continue;
			}
		}
		disproportion = TRUE;
		++fwd;
	}
	*bckwd = NULL;/* NULL-terminate the list */

	FUNC2(ret);
}