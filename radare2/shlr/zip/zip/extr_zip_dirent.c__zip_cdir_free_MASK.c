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
typedef  scalar_t__ zip_uint64_t ;
struct zip_cdir {scalar_t__ nentry; scalar_t__ entry; int /*<<< orphan*/  comment; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zip_cdir*) ; 

void
FUNC3(struct zip_cdir *cd)
{
    zip_uint64_t i;

    if (!cd)
	return;

    for (i=0; i<cd->nentry; i++)
	FUNC0(cd->entry+i);
    FUNC2(cd->entry);
    FUNC1(cd->comment);
    FUNC2(cd);
}