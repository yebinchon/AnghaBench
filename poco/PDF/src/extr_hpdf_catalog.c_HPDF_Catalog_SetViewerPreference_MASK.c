#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* error; int /*<<< orphan*/  mmgr; } ;
struct TYPE_11__ {scalar_t__ error_no; } ;
typedef  int HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  TYPE_2__* HPDF_Catalog ;

/* Variables and functions */
 int HPDF_CENTER_WINDOW ; 
 scalar_t__ HPDF_DICT_ITEM_NOT_FOUND ; 
 scalar_t__ FUNC0 (TYPE_2__*,char*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*) ; 
 int HPDF_FIT_WINDOW ; 
 int HPDF_HIDE_MENUBAR ; 
 int HPDF_HIDE_TOOLBAR ; 
 int HPDF_HIDE_WINDOW_UI ; 
 scalar_t__ HPDF_OK ; 
 int HPDF_PRINT_SCALING_NONE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  HPDF_TRUE ; 

HPDF_STATUS
FUNC6  (HPDF_Catalog   catalog,
                                   HPDF_UINT      value)
{
    HPDF_STATUS ret;
    HPDF_Dict preferences;

    FUNC5 ((" HPDF_Catalog_SetViewerPreference\n"));

    if (!value) {
        ret = FUNC4 (catalog, "ViewerPreferences");

        if (ret == HPDF_DICT_ITEM_NOT_FOUND)
            ret = HPDF_OK;

        return ret;
    }

    preferences = FUNC3 (catalog->mmgr);
    if (!preferences)
        return catalog->error->error_no;

    if ((ret = FUNC0 (catalog, "ViewerPreferences", preferences))
            != HPDF_OK)
        return ret;

    /*  */

    if (value & HPDF_HIDE_TOOLBAR) {
        if ((ret = FUNC1 (preferences, "HideToolbar",
                HPDF_TRUE)) != HPDF_OK)
            return ret;
    } else {
        if ((ret = FUNC4 (preferences, "HideToolbar")) !=
                HPDF_OK)
            if (ret != HPDF_DICT_ITEM_NOT_FOUND)
                return ret;
    }

    if (value & HPDF_HIDE_MENUBAR) {
        if ((ret = FUNC1 (preferences, "HideMenubar",
                HPDF_TRUE)) != HPDF_OK)
            return ret;
    } else {
        if ((ret = FUNC4 (preferences, "HideMenubar")) !=
                HPDF_OK)
            if (ret != HPDF_DICT_ITEM_NOT_FOUND)
                return ret;
    }

    if (value & HPDF_HIDE_WINDOW_UI) {
        if ((ret = FUNC1 (preferences, "HideWindowUI",
                HPDF_TRUE)) != HPDF_OK)
            return ret;
    } else {
        if ((ret = FUNC4 (preferences, "HideWindowUI")) !=
                HPDF_OK)
            if (ret != HPDF_DICT_ITEM_NOT_FOUND)
                return ret;
    }

    if (value & HPDF_FIT_WINDOW) {
        if ((ret = FUNC1 (preferences, "FitWindow",
                HPDF_TRUE)) != HPDF_OK)
            return ret;
    } else {
        if ((ret = FUNC4 (preferences, "FitWindow")) !=
                HPDF_OK)
            if (ret != HPDF_DICT_ITEM_NOT_FOUND)
                return ret;
    }

    if (value & HPDF_CENTER_WINDOW) {
        if ((ret = FUNC1 (preferences, "CenterWindow",
                HPDF_TRUE)) != HPDF_OK)
            return ret;
    } else {
        if ((ret = FUNC4 (preferences, "CenterWindow")) !=
                HPDF_OK)
            if (ret != HPDF_DICT_ITEM_NOT_FOUND)
                return ret;
    }

    if (value & HPDF_PRINT_SCALING_NONE) {
        if ((ret = FUNC2 (preferences, "PrintScaling",
                "None")) != HPDF_OK)
            return ret;
    } else {
        if ((ret = FUNC4 (preferences, "PrintScaling")) !=
                HPDF_OK)
            if (ret != HPDF_DICT_ITEM_NOT_FOUND)
                return ret;
    }

    return HPDF_OK;
}