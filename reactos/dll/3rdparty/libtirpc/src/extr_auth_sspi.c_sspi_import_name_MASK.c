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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * sspi_name_t ;
struct TYPE_3__ {scalar_t__ length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ sspi_buffer_desc ;

/* Variables and functions */
 int /*<<< orphan*/  SEC_E_INSUFFICIENT_MEMORY ; 
 int /*<<< orphan*/  SEC_E_OK ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

uint32_t FUNC4(sspi_buffer_desc *name_in, sspi_name_t *name_out)
{
    *name_out = FUNC0(name_in->length + 5, sizeof(char));
    if (*name_out == NULL)
        return SEC_E_INSUFFICIENT_MEMORY;

    FUNC2(*name_out, "nfs/");
    FUNC3(*name_out, name_in->value, name_in->length);

    FUNC1("imported service name is: %s\n", *name_out);

    return SEC_E_OK;
}