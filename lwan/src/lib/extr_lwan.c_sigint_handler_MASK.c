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
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int main_socket ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int signal_number __attribute__((unused)))
{
    if (main_socket < 0)
        return;

    FUNC1((int)main_socket, SHUT_RDWR);
    FUNC0((int)main_socket);

    main_socket = -1;
}