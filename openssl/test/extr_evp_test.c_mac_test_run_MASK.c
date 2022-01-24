#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * mac; } ;
typedef  TYPE_1__ MAC_DATA ;
typedef  TYPE_2__ EVP_TEST ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(EVP_TEST *t)
{
    MAC_DATA *expected = t->data;

    if (expected->mac != NULL)
        return FUNC0(t);
    return FUNC1(t);
}