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
struct d3dx_technique {int dummy; } ;
struct d3dx9_base_effect {unsigned int technique_count; struct d3dx_technique* techniques; } ;
typedef  scalar_t__ D3DXHANDLE ;

/* Variables and functions */
 struct d3dx_technique* FUNC0 (struct d3dx9_base_effect*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct d3dx_technique*) ; 

__attribute__((used)) static struct d3dx_technique *FUNC2(struct d3dx9_base_effect *base, D3DXHANDLE technique)
{
    unsigned int i;

    for (i = 0; i < base->technique_count; ++i)
    {
        if (FUNC1(&base->techniques[i]) == technique)
            return &base->techniques[i];
    }

    return FUNC0(base, technique);
}