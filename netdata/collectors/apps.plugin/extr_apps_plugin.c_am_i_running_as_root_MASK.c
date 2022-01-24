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
typedef  scalar_t__ uid_t ;

/* Variables and functions */
 scalar_t__ debug_enabled ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3() {
    uid_t uid = FUNC1(), euid = FUNC0();

    if(uid == 0 || euid == 0) {
        if(debug_enabled) FUNC2("I am running with escalated privileges, uid = %u, euid = %u.", uid, euid);
        return 1;
    }

    if(debug_enabled) FUNC2("I am not running with escalated privileges, uid = %u, euid = %u.", uid, euid);
    return 0;
}