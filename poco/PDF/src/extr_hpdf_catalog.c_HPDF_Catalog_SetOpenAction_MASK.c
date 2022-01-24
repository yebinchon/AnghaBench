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
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_Destination ;
typedef  int /*<<< orphan*/  HPDF_Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HPDF_OK ; 

HPDF_STATUS
FUNC2  (HPDF_Catalog       catalog,
                             HPDF_Destination   open_action)
{
    if (!open_action) {
        FUNC1 (catalog, "OpenAction");
        return HPDF_OK;
    }

    return FUNC0 (catalog, "OpenAction", open_action);
}