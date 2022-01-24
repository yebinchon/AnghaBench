#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  user; } ;
struct TYPE_12__ {int /*<<< orphan*/  port; int /*<<< orphan*/  sockdir; } ;
struct TYPE_11__ {char* data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  TYPE_2__ ClusterInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 () ; 
 TYPE_4__ os_info ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

char *
FUNC6(ClusterInfo *cluster)
{
	static PQExpBuffer buf;

	if (buf == NULL)
		buf = FUNC4();
	else
		FUNC5(buf);

	if (cluster->sockdir)
	{
		FUNC2(buf, "--host ");
		FUNC3(buf, cluster->sockdir);
		FUNC1(buf, ' ');
	}
	FUNC0(buf, "--port %d --username ", cluster->port);
	FUNC3(buf, os_info.user);

	return buf->data;
}