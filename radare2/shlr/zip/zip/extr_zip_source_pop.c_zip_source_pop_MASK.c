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
struct TYPE_2__ {int /*<<< orphan*/  (* l ) (struct zip_source*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct zip_source {int /*<<< orphan*/  ud; TYPE_1__ cb; scalar_t__ is_open; struct zip_source* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_SOURCE_CLOSE ; 
 int /*<<< orphan*/  ZIP_SOURCE_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct zip_source*) ; 
 int /*<<< orphan*/  FUNC1 (struct zip_source*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zip_source*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zip_source*) ; 

struct zip_source *
FUNC4(struct zip_source *src)
{
    struct zip_source *lower;

    if (src == NULL)
	return NULL;

    lower = src->src;

    if (lower == NULL)
	FUNC3(src);
    else {
	if (src->is_open)
	    (void)src->cb.l(src, src->ud, NULL, 0, ZIP_SOURCE_CLOSE);
	(void)src->cb.l(src, src->ud, NULL, 0, ZIP_SOURCE_FREE);
	
	FUNC0(src);
    }

    return lower;
}