#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  doc_host; int /*<<< orphan*/  extern_ref; } ;
typedef  scalar_t__ LONG ;
typedef  TYPE_1__ InternetExplorer ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

DWORD FUNC4(InternetExplorer *This, BOOL last_closes)
{
    LONG ref = FUNC0(&This->extern_ref);

    FUNC1("ref = %d\n", ref);

    if(ref)
        return ref;

    if(!last_closes) {
        FUNC2("Last external connection released with FALSE last_closes.\n");
        return ref;
    }

    FUNC3(&This->doc_host);
    return ref;
}