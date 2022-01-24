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
struct v1_field {int /*<<< orphan*/  create_detailed_value; int /*<<< orphan*/  id; int /*<<< orphan*/ * (* format ) (int /*<<< orphan*/ ) ;} ;
struct detail_data {TYPE_1__* pCertViewInfo; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  pCertContext; } ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct detail_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(HWND hwnd, struct detail_data *data,
 const struct v1_field *field)
{
    WCHAR *val = field->format(data->pCertViewInfo->pCertContext);

    if (val)
    {
        FUNC2(hwnd, data, field->id, val,
         field->create_detailed_value, NULL);
        FUNC1(FUNC0(), 0, val);
    }
}