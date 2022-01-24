#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  PgBackendStatus ;
typedef  int /*<<< orphan*/  PgBackendSSLStatus ;

/* Variables and functions */
 int NAMEDATALEN ; 
 int /*<<< orphan*/  NumBackendStatSlots ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int pgstat_track_activity_query_size ; 

Size
FUNC2(void)
{
	Size		size;

	/* BackendStatusArray: */
	size = FUNC1(sizeof(PgBackendStatus), NumBackendStatSlots);
	/* BackendAppnameBuffer: */
	size = FUNC0(size,
					FUNC1(NAMEDATALEN, NumBackendStatSlots));
	/* BackendClientHostnameBuffer: */
	size = FUNC0(size,
					FUNC1(NAMEDATALEN, NumBackendStatSlots));
	/* BackendActivityBuffer: */
	size = FUNC0(size,
					FUNC1(pgstat_track_activity_query_size, NumBackendStatSlots));
#ifdef USE_SSL
	/* BackendSslStatusBuffer: */
	size = add_size(size,
					mul_size(sizeof(PgBackendSSLStatus), NumBackendStatSlots));
#endif
	return size;
}