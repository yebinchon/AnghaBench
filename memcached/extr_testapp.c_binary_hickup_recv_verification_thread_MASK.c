#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  status; int /*<<< orphan*/  opcode; } ;
struct TYPE_10__ {TYPE_1__ response; } ;
struct TYPE_11__ {TYPE_2__ header; } ;
struct TYPE_12__ {TYPE_3__ message; } ;
typedef  TYPE_4__ protocol_binary_response_no_extras ;

/* Variables and functions */
 int allow_closed_read ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int hickup_thread_running ; 
 TYPE_4__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(void *arg) {
    protocol_binary_response_no_extras *response = FUNC1(65*1024);
    if (response != NULL) {
        while (FUNC2(response, 65*1024)) {
            /* Just validate the packet format */
            FUNC3(response,
                                     response->message.header.response.opcode,
                                     response->message.header.response.status);
        }
        FUNC0(response);
    }
    hickup_thread_running = false;
    allow_closed_read = false;
    return NULL;
}