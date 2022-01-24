#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int socklen_t ;
struct TYPE_2__ {int verbose; } ;

/* Variables and functions */
 int MAX_SENDBUF_SIZE ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int const,int,int) ; 
 scalar_t__ FUNC1 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 TYPE_1__ settings ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(const int sfd) {
    socklen_t intsize = sizeof(int);
    int last_good = 0;
    int min, max, avg;
    int old_size;

    /* Start with the default size. */
    if (FUNC1(sfd, SOL_SOCKET, SO_SNDBUF, &old_size, &intsize) != 0) {
        if (settings.verbose > 0)
            FUNC2("getsockopt(SO_SNDBUF)");
        return;
    }

    /* Binary-search for the real maximum. */
    min = old_size;
    max = MAX_SENDBUF_SIZE;

    while (min <= max) {
        avg = ((unsigned int)(min + max)) / 2;
        if (FUNC3(sfd, SOL_SOCKET, SO_SNDBUF, (void *)&avg, intsize) == 0) {
            last_good = avg;
            min = avg + 1;
        } else {
            max = avg - 1;
        }
    }

    if (settings.verbose > 1)
        FUNC0(stderr, "<%d send buffer was %d, now %d\n", sfd, old_size, last_good);
}