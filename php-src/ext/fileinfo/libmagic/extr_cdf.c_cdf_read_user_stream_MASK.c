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
typedef  int /*<<< orphan*/  cdf_stream_t ;
typedef  int /*<<< orphan*/  cdf_sat_t ;
typedef  int /*<<< orphan*/  cdf_info_t ;
typedef  int /*<<< orphan*/  cdf_header_t ;
struct TYPE_5__ {int /*<<< orphan*/  d_size; int /*<<< orphan*/  d_stream_first_sector; } ;
typedef  TYPE_1__ cdf_directory_t ;
struct TYPE_6__ {TYPE_1__* dir_tab; } ;
typedef  TYPE_2__ cdf_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  CDF_DIR_TYPE_USER_STREAM ; 
 int FUNC0 (TYPE_2__ const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC3(const cdf_info_t *info, const cdf_header_t *h,
    const cdf_sat_t *sat, const cdf_sat_t *ssat, const cdf_stream_t *sst,
    const cdf_dir_t *dir, const char *name, cdf_stream_t *scn)
{
	const cdf_directory_t *d;
	int i = FUNC0(dir, name, CDF_DIR_TYPE_USER_STREAM);

	if (i <= 0) {
		FUNC2(scn, 0, sizeof(*scn));
		return -1;
	}

	d = &dir->dir_tab[i - 1];
	return FUNC1(info, h, sat, ssat, sst,
	    d->d_stream_first_sector, d->d_size, scn);
}