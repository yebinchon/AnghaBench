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
typedef  int /*<<< orphan*/  HPDF_Real ;
typedef  int /*<<< orphan*/  HPDF_REAL ;
typedef  TYPE_1__* HPDF_Dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC3  (HPDF_Dict        dict,
                    const char  *key,
                    HPDF_REAL        value)
{
    HPDF_Real real = FUNC2 (dict->mmgr, value);

    if (!real)
        return FUNC1 (dict->error);

    return FUNC0 (dict, key, real);
}