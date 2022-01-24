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
struct TYPE_2__ {int /*<<< orphan*/ * f; } ;
struct zip_source {scalar_t__ is_open; int /*<<< orphan*/  error_source; int /*<<< orphan*/ * ud; TYPE_1__ cb; int /*<<< orphan*/ * src; } ;
struct zip {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  ZIP_LES_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

struct zip_source *
FUNC2(struct zip *za)
{
    struct zip_source *src;

    if ((src=(struct zip_source *)FUNC1(sizeof(*src))) == NULL) {
	FUNC0(&za->error, ZIP_ER_MEMORY, 0);
	return NULL;
    }

    src->src = NULL;
    src->cb.f = NULL;
    src->ud = NULL;
    src->error_source = ZIP_LES_NONE;
    src->is_open = 0;

    return src;
}