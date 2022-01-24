#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int obj_class; } ;
struct TYPE_5__ {int /*<<< orphan*/  error; TYPE_1__ header; } ;
typedef  TYPE_2__* HPDF_Catalog ;
typedef  int /*<<< orphan*/  HPDF_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_FALSE ; 
 int /*<<< orphan*/  HPDF_INVALID_OBJECT ; 
 int HPDF_OCLASS_DICT ; 
 int HPDF_OSUBCLASS_CATALOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_TRUE ; 

HPDF_BOOL
FUNC1  (HPDF_Catalog   catalog)
{
    if (!catalog)
        return HPDF_FALSE;

    if (catalog->header.obj_class != (HPDF_OSUBCLASS_CATALOG |
                HPDF_OCLASS_DICT)) {
        FUNC0 (catalog->error, HPDF_INVALID_OBJECT, 0);
        return HPDF_FALSE;
    }

    return HPDF_TRUE;
}