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
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3 (char *pwd, char *dir) {
    if (dir[0] == '/') {
        FUNC1 (pwd, dir);
    } else {
        if (FUNC2(pwd) > 1) {
            FUNC0 (pwd, "/");
        }
        FUNC0 (pwd, dir);
    }

    uint len = FUNC2(pwd);
    if ((len > 1) && (pwd[len - 1] == '/')) {
        pwd[len - 1] = '\0';
    }
}