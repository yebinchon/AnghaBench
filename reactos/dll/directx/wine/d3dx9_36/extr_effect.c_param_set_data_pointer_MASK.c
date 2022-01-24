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
struct d3dx_parameter {int element_count; unsigned int member_count; unsigned char* data; int /*<<< orphan*/  bytes; struct d3dx_parameter* members; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct d3dx_parameter*,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct d3dx_parameter *param, unsigned char *data, BOOL child, BOOL free_data)
{
    unsigned char *member_data = data;
    unsigned int i, count;

    count = param->element_count ? param->element_count : param->member_count;
    for (i = 0; i < count; ++i)
    {
        FUNC1(&param->members[i], member_data, TRUE, free_data);
        if (data)
            member_data += param->members[i].bytes;
    }
    if (free_data)
        FUNC0(param, child);
    param->data = data;
}