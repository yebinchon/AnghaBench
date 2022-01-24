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
struct TYPE_2__ {scalar_t__ value; } ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  scalar_t__ HPDF_Dict ;
typedef  scalar_t__ HPDF_Catalog ;
typedef  TYPE_1__* HPDF_Boolean ;

/* Variables and functions */
 scalar_t__ HPDF_CENTER_WINDOW ; 
 scalar_t__ FUNC0 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_FIT_WINDOW ; 
 scalar_t__ HPDF_HIDE_MENUBAR ; 
 scalar_t__ HPDF_HIDE_TOOLBAR ; 
 scalar_t__ HPDF_HIDE_WINDOW_UI ; 
 int /*<<< orphan*/  HPDF_OCLASS_BOOLEAN ; 
 int /*<<< orphan*/  HPDF_OCLASS_DICT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

HPDF_UINT
FUNC2  (HPDF_Catalog   catalog)
{
    HPDF_Dict preferences;
    HPDF_UINT value = 0;
    HPDF_Boolean obj;

    FUNC1 ((" HPDF_Catalog_GetViewerPreference\n"));

    preferences = (HPDF_Dict)FUNC0 (catalog, "ViewerPreferences",
            HPDF_OCLASS_DICT);

    if (!preferences)
        return 0;

    obj = (HPDF_Boolean)FUNC0 (preferences, "HideToolbar",
            HPDF_OCLASS_BOOLEAN);
    if (obj) {
        if (obj->value)
            value += HPDF_HIDE_TOOLBAR;
    }

    obj = (HPDF_Boolean)FUNC0 (preferences, "HideMenubar",
            HPDF_OCLASS_BOOLEAN);
    if (obj) {
        if (obj->value)
            value += HPDF_HIDE_MENUBAR;
    }

    obj = (HPDF_Boolean)FUNC0 (preferences, "HideWindowUI",
            HPDF_OCLASS_BOOLEAN);
    if (obj) {
        if (obj->value)
            value += HPDF_HIDE_WINDOW_UI;
    }

    obj = (HPDF_Boolean)FUNC0 (preferences, "FitWindow",
            HPDF_OCLASS_BOOLEAN);
    if (obj) {
        if (obj->value)
            value += HPDF_FIT_WINDOW;
    }

    obj = (HPDF_Boolean)FUNC0 (preferences, "CenterWindow",
            HPDF_OCLASS_BOOLEAN);
    if (obj) {
        if (obj->value)
            value += HPDF_CENTER_WINDOW;
    }

    return value;
}