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
typedef  int zip_flags_t ;
struct zip_extra_field {int flags; scalar_t__ id; scalar_t__ size; int /*<<< orphan*/  data; struct zip_extra_field* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ZIP_EF_BOTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 

void
FUNC2(const struct zip_extra_field *ef, zip_flags_t flags, FILE *f)
{
    for (; ef; ef=ef->next) {
	if (ef->flags & flags & ZIP_EF_BOTH) {
	    FUNC0(ef->id, f);
	    FUNC0(ef->size, f);
	    if (ef->size > 0)
		FUNC1(ef->data, ef->size, 1, f);
	}
    }
}