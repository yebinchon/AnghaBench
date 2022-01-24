#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  nid; } ;
struct TYPE_4__ {int /*<<< orphan*/ * driver_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (TYPE_2__*) ; 
 TYPE_2__* cipher_data ; 
 TYPE_1__* cipher_driver_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
    size_t i;

    for (i = 0; i < FUNC1(cipher_data); i++) {
        FUNC2(cipher_data[i].nid);
        FUNC0(cipher_driver_info[i].driver_name);
        cipher_driver_info[i].driver_name = NULL;
    }
}