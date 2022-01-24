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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,size_t,char*,struct tm*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(char *buffer, size_t len) {
    if(FUNC3(!buffer || !len))
        return;

    time_t t;
    struct tm *tmp, tmbuf;

    t = FUNC1();
    tmp = FUNC0(&t, &tmbuf);

    if (tmp == NULL) {
        buffer[0] = '\0';
        return;
    }

    if (FUNC3(FUNC2(buffer, len, "%Y-%m-%d %H:%M:%S", tmp) == 0))
        buffer[0] = '\0';

    buffer[len - 1] = '\0';
}