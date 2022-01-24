#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  scalar_t__ HPDF_InfoType ;
typedef  int /*<<< orphan*/  HPDF_Encoder ;
typedef  TYPE_1__* HPDF_Dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,char const*) ; 
 scalar_t__ HPDF_INFO_MOD_DATE ; 
 scalar_t__ HPDF_INFO_TRAPPED ; 
 int /*<<< orphan*/  HPDF_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__) ; 

HPDF_STATUS
FUNC6 (HPDF_Dict        info,
                       HPDF_InfoType    type,
                       const char  *value,
                       HPDF_Encoder     encoder)
{
    const char* name = FUNC5 (type);

    FUNC2((" HPDF_Info_SetInfoAttr\n"));

    if (type <= HPDF_INFO_MOD_DATE)
        return FUNC3 (info->error, HPDF_INVALID_PARAMETER, 0);

    if (type == HPDF_INFO_TRAPPED)
        return FUNC1(info, name, value);

    return FUNC0 (info, name, FUNC4 (info->mmgr, value,
            encoder));
}