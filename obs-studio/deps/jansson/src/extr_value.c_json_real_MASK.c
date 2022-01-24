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
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {double value; int /*<<< orphan*/  json; } ;
typedef  TYPE_1__ json_real_t ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_REAL ; 
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 

json_t *FUNC4(double value)
{
    json_real_t *real;

    if(FUNC1(value) || FUNC0(value))
        return NULL;

    real = FUNC3(sizeof(json_real_t));
    if(!real)
        return NULL;
    FUNC2(&real->json, JSON_REAL);

    real->value = value;
    return &real->json;
}