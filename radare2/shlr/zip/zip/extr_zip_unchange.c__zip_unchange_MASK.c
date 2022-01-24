#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zip_uint64_t ;
typedef  scalar_t__ zip_int64_t ;
struct zip {scalar_t__ nentry; TYPE_1__* entry; int /*<<< orphan*/  error; } ;
struct TYPE_4__ {int changed; } ;
struct TYPE_3__ {TYPE_2__* changes; } ;

/* Variables and functions */
 int ZIP_DIRENT_FILENAME ; 
 int /*<<< orphan*/  ZIP_ER_EXISTS ; 
 int /*<<< orphan*/  ZIP_ER_INVAL ; 
 int /*<<< orphan*/  ZIP_FL_UNCHANGED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zip*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct zip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(struct zip *za, zip_uint64_t idx, int allow_duplicates)
{
    zip_int64_t i;
    
    if (idx >= za->nentry) {
	FUNC1(&za->error, ZIP_ER_INVAL, 0);
	return -1;
    }

    if (!allow_duplicates && za->entry[idx].changes && (za->entry[idx].changes->changed & ZIP_DIRENT_FILENAME)) {
	i = FUNC3(za, FUNC2(za, idx, ZIP_FL_UNCHANGED, NULL), 0, NULL);
	if (i >= 0 && (zip_uint64_t)i != idx) {
	    FUNC1(&za->error, ZIP_ER_EXISTS, 0);
	    return -1;
	}
    }

    FUNC0(za->entry[idx].changes);
    za->entry[idx].changes = NULL;

    FUNC4(za->entry+idx);

    return 0;
}