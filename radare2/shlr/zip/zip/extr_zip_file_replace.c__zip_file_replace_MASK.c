#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zip_uint64_t ;
typedef  int zip_int64_t ;
typedef  int zip_flags_t ;
struct zip_source {int dummy; } ;
struct zip {scalar_t__ nentry; TYPE_1__* entry; int /*<<< orphan*/  error; } ;
struct TYPE_5__ {int changed; int /*<<< orphan*/  comp_method; } ;
struct TYPE_4__ {struct zip_source* source; TYPE_3__* changes; int /*<<< orphan*/ * orig; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_CM_REPLACED_DEFAULT ; 
 int ZIP_DIRENT_COMP_METHOD ; 
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  ZIP_ER_RDONLY ; 
 int ZIP_FL_OVERWRITE ; 
 scalar_t__ FUNC0 (struct zip*) ; 
 scalar_t__ ZIP_UINT64_MAX ; 
 int FUNC1 (struct zip*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct zip*,char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct zip*,scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

zip_int64_t
FUNC8(struct zip *za, zip_uint64_t idx, const char *name, struct zip_source *source, zip_flags_t flags)
{
    zip_uint64_t za_nentry_prev;
    
    if (FUNC0(za)) {
	FUNC4(&za->error, ZIP_ER_RDONLY, 0);
	return -1;
    }

    za_nentry_prev = za->nentry;
    if (idx == ZIP_UINT64_MAX) {
	zip_int64_t i = -1;
	
	if (flags & ZIP_FL_OVERWRITE)
	    i = FUNC5(za, name, flags, NULL);

	if (i == -1) {
	    /* create and use new entry, used by zip_add */
	    if ((i=FUNC1(za)) < 0)
		return -1;
	}
	idx = (zip_uint64_t)i;
    }
    
    if (name && FUNC6(za, idx, name, flags) != 0) {
	if (za->nentry != za_nentry_prev) {
	    FUNC3(za->entry+idx);
	    za->nentry = za_nentry_prev;
	}
	return -1;
    }

    /* does not change any name related data, so we can do it here;
     * needed for a double add of the same file name */
    FUNC7(za->entry+idx);

    if (za->entry[idx].orig != NULL && (za->entry[idx].changes == NULL || (za->entry[idx].changes->changed & ZIP_DIRENT_COMP_METHOD) == 0)) {
        if (za->entry[idx].changes == NULL) {
            if ((za->entry[idx].changes=FUNC2(za->entry[idx].orig)) == NULL) {
                FUNC4(&za->error, ZIP_ER_MEMORY, 0);
                return -1;
            }
        }

        za->entry[idx].changes->comp_method = ZIP_CM_REPLACED_DEFAULT;
        za->entry[idx].changes->changed |= ZIP_DIRENT_COMP_METHOD;
    }
	
    za->entry[idx].source = source;

    return (zip_int64_t)idx;
}