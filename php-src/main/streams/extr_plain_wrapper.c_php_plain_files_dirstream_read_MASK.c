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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  d_name; } ;
typedef  TYPE_1__ php_stream_dirent ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(php_stream *stream, char *buf, size_t count)
{
	DIR *dir = (DIR*)stream->abstract;
	struct dirent *result;
	php_stream_dirent *ent = (php_stream_dirent*)buf;

	/* avoid problems if someone mis-uses the stream */
	if (count != sizeof(php_stream_dirent))
		return -1;

	result = FUNC1(dir);
	if (result) {
		FUNC0(ent->d_name, result->d_name, sizeof(ent->d_name), FUNC2(result->d_name));
		return sizeof(php_stream_dirent);
	}
	return 0;
}