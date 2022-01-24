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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ accept_socket ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC1(bio_err, "shutdown accept socket\n");
    if (accept_socket >= 0) {
        FUNC0(accept_socket);
    }
}