#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ sei_t ;
struct TYPE_10__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ sei_message_t ;
typedef  int /*<<< orphan*/  cea708_t ;

/* Variables and functions */
 int /*<<< orphan*/  CEA608_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  sei_type_user_data_registered_itu_t_t35 ; 

void FUNC6(sei_t* sei, cea708_t* cea708)
{
    sei_message_t* msg = FUNC4(sei_type_user_data_registered_itu_t_t35, 0, CEA608_MAX_SIZE);
    msg->size = FUNC1(cea708, FUNC3(msg), FUNC5(msg));
    FUNC2(sei, msg);
    FUNC0(cea708, sei->timestamp); // will confgure using HLS compatiable defaults
}