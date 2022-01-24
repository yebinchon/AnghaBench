#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hostname; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  D_RRD_CALLS ; 
 int RRD_ID_LENGTH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

inline RRDSET *FUNC5(RRDHOST *host, const char *type, const char *id) {
    FUNC0(D_RRD_CALLS, "rrdset_find_bytype() for chart '%s.%s' in host '%s'", type, id, host->hostname);

    char buf[RRD_ID_LENGTH_MAX + 1];
    FUNC4(buf, type, RRD_ID_LENGTH_MAX - 1);
    FUNC2(buf, ".");
    int len = (int) FUNC3(buf);
    FUNC4(&buf[len], id, (size_t) (RRD_ID_LENGTH_MAX - len));

    return(FUNC1(host, buf));
}