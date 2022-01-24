#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ rrdpush_sender_connected; scalar_t__ rrdpush_sender_spawn; scalar_t__ rrdpush_send_enabled; } ;
typedef  int /*<<< orphan*/  RRDVAR ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC3(RRDHOST *host, RRDVAR *rv) {
    if(host->rrdpush_send_enabled && host->rrdpush_sender_spawn && host->rrdpush_sender_connected) {
        FUNC0(host);
        FUNC2(host, rv);
        FUNC1(host);
    }
}