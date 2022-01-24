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
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2 (char *pwd, char *dir) {
    uint newlen = FUNC1(pwd) - FUNC1(dir);
    if ((newlen > 2) && (pwd[newlen - 1] == '/')) {
        pwd[newlen - 1] = '\0';
    }
    else {
        if (newlen == 0) {
            FUNC0 (pwd, "/");
        } else {
            pwd[newlen] = '\0';
        }
    }
}