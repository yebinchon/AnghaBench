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
struct d3dx_regstore {int dummy; } ;
typedef  enum pres_reg_tables { ____Placeholder_pres_reg_tables } pres_reg_tables ;

/* Variables and functions */
 double FUNC0 (struct d3dx_regstore*,int,unsigned int) ; 

__attribute__((used)) static double FUNC1(struct d3dx_regstore *rs, enum pres_reg_tables table, unsigned int offset)
{
    return FUNC0(rs, table, offset);
}