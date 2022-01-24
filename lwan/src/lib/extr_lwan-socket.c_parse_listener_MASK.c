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
typedef  int /*<<< orphan*/  sa_family_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,char**) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static sa_family_t FUNC4(char *listener, char **node, char **port)
{
    if (FUNC3(listener, "systemd")) {
        FUNC0(
            "Listener configured to use systemd socket activation, "
            "but started outside systemd.");
        return AF_UNSPEC;
    }

    if (*listener == '[')
        return FUNC2(listener, node, port);

    return FUNC1(listener, node, port);
}