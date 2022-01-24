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
struct TYPE_3__ {scalar_t__ value; } ;
typedef  TYPE_1__* HPDF_String ;
typedef  int /*<<< orphan*/  HPDF_InfoType ;
typedef  int /*<<< orphan*/  HPDF_Dict ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

const char*
FUNC3 (HPDF_Dict      info,
                       HPDF_InfoType  type)
{
    const char* name = FUNC2 (type);
    HPDF_String s;

    FUNC1((" HPDF_Info_GetInfoAttr\n"));

    if (!info)
        return NULL;

    s = FUNC0 (info, name, HPDF_OCLASS_STRING);

    if (!s)
        return NULL;
    else
        return (const char *)(s->value);
}