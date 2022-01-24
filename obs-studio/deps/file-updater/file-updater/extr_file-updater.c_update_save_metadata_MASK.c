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
struct update_info {int /*<<< orphan*/  etag_remote; int /*<<< orphan*/  cache; } ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct update_info *info)
{
	struct dstr path = {0};

	if (!info->etag_remote)
		return;

	FUNC1(&path, info->cache);
	FUNC0(&path, "meta.json");

	obs_data_t *data;
	data = FUNC3();
	FUNC6(data, "etag", info->etag_remote);
	FUNC5(data, path.array);
	FUNC4(data);

	FUNC2(&path);
}