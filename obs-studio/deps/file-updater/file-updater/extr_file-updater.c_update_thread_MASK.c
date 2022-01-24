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
struct update_info {scalar_t__ etag_remote; scalar_t__ etag_local; int /*<<< orphan*/  temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct update_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct update_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct update_info*,int) ; 

__attribute__((used)) static void *FUNC5(void *data)
{
	struct update_info *info = data;
	int cur_version;

	if (!FUNC1(info))
		return NULL;

	cur_version = FUNC3(info);
	FUNC4(info, cur_version);
	FUNC2(info->temp);

	if (info->etag_local)
		FUNC0(info->etag_local);
	if (info->etag_remote)
		FUNC0(info->etag_remote);

	return NULL;
}