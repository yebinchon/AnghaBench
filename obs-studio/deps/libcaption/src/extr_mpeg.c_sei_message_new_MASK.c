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
typedef  int /*<<< orphan*/  uint8_t ;
struct _sei_message_t {size_t size; int /*<<< orphan*/  type; scalar_t__ next; } ;
typedef  int /*<<< orphan*/  sei_msgtype_t ;
typedef  int /*<<< orphan*/  sei_message_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct _sei_message_t*) ; 

sei_message_t* FUNC4(sei_msgtype_t type, uint8_t* data, size_t size)
{
    struct _sei_message_t* msg = (struct _sei_message_t*)FUNC0(sizeof(struct _sei_message_t) + size);
    msg->next = 0;
    msg->type = type;
    msg->size = size;

    if (data) {
        FUNC1(FUNC3(msg), data, size);
    } else {
        FUNC2(FUNC3(msg), 0, size);
    }

    return (sei_message_t*)msg;
}