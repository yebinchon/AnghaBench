#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rrdpush_sender_buffer; int /*<<< orphan*/  hostname; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC7(RRDHOST *host) {
    FUNC3(host);

    if(FUNC1(host->rrdpush_sender_buffer))
        FUNC2("STREAM %s [send]: discarding %zu bytes of metrics already in the buffer.", host->hostname, FUNC1(host->rrdpush_sender_buffer));

    FUNC0(host->rrdpush_sender_buffer);

    FUNC5(host);
    FUNC6(host);

    FUNC4(host);
}