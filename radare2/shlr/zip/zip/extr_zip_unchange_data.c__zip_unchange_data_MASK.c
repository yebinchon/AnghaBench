#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zip_entry {scalar_t__ deleted; TYPE_1__* changes; int /*<<< orphan*/ * source; } ;
struct TYPE_2__ {int changed; scalar_t__ comp_method; } ;

/* Variables and functions */
 scalar_t__ ZIP_CM_REPLACED_DEFAULT ; 
 int ZIP_DIRENT_COMP_METHOD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct zip_entry *ze)
{
    if (ze->source) {
	FUNC1(ze->source);
	ze->source = NULL;
    }

    if (ze->changes != NULL && (ze->changes->changed & ZIP_DIRENT_COMP_METHOD) && ze->changes->comp_method == ZIP_CM_REPLACED_DEFAULT) {
	ze->changes->changed &= ~ZIP_DIRENT_COMP_METHOD;
	if (ze->changes->changed == 0) {
	    FUNC0(ze->changes);
	    ze->changes = NULL;
	}
    }

    ze->deleted = 0;
}