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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1 (int num, char * bf)
    {
    if (num<0) {
        num=-num;
        *bf++ = '-';
        }
    FUNC0(num,10,0,bf);
    }