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
struct TYPE_3__ {scalar_t__ setter; scalar_t__ getter; int /*<<< orphan*/  value; scalar_t__ explicit_value; } ;
typedef  TYPE_1__ property_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(property_desc_t *desc)
{
    if(desc->explicit_value)
        FUNC1(desc->value);
    if(desc->getter)
        FUNC0(desc->getter);
    if(desc->setter)
        FUNC0(desc->setter);
}