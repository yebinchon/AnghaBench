#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; } ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Dict ;
typedef  int /*<<< orphan*/  HPDF_Boolean ;
typedef  int /*<<< orphan*/  HPDF_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC3  (HPDF_Dict      dict,
                      const char    *key,
                      HPDF_BOOL      value)
{
    HPDF_Boolean obj = FUNC0 (dict->mmgr, value);

    if (!obj)
        return FUNC2 (dict->error);

    return FUNC1 (dict, key, obj);
}