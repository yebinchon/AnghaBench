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
struct ICD_Data {int /*<<< orphan*/  hModule; struct ICD_Data* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ICD_Data*) ; 
 struct ICD_Data* ICD_Data_List ; 
 int /*<<< orphan*/  icdload_cs ; 

void FUNC4(void)
{
    struct ICD_Data* data;

    FUNC0(&icdload_cs);

    while (ICD_Data_List != NULL)
    {
        data = ICD_Data_List;
        ICD_Data_List = data->next;

        FUNC1(data->hModule);
        FUNC3(FUNC2(), 0, data);
    }
}