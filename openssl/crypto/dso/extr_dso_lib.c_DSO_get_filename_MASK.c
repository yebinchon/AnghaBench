#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* filename; } ;
typedef  TYPE_1__ DSO ;

/* Variables and functions */
 int /*<<< orphan*/  DSO_F_DSO_GET_FILENAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 

const char *FUNC1(DSO *dso)
{
    if (dso == NULL) {
        FUNC0(DSO_F_DSO_GET_FILENAME, ERR_R_PASSED_NULL_PARAMETER);
        return NULL;
    }
    return dso->filename;
}