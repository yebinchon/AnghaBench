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
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  head; } ;
typedef  TYPE_1__ sei_t ;
typedef  int /*<<< orphan*/  sei_message_t ;

/* Variables and functions */
 size_t FUNC0 (int*,int*,int) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

size_t FUNC6(sei_t* sei, uint8_t* data)
{
    if (!sei || !sei->head) {
        return 0;
    }

    size_t escaped_size, size = 2; // nalu_type + stop bit
    sei_message_t* msg;
    (*data) = 6;
    ++data;

    for (msg = FUNC2(sei); msg; msg = FUNC3(msg)) {
        int payloadType = FUNC5(msg);
        int payloadSize = (int)FUNC4(msg);
        uint8_t* payloadData = FUNC1(msg);

        while (255 <= payloadType) {
            (*data) = 255;
            ++data;
            ++size;
            payloadType -= 255;
        }

        (*data) = payloadType;
        ++data;
        ++size;

        while (255 <= payloadSize) {
            (*data) = 255;
            ++data;
            ++size;
            payloadSize -= 255;
        }

        (*data) = payloadSize;
        ++data;
        ++size;

        if (0 >= (escaped_size = FUNC0(data, payloadData, payloadSize))) {
            return 0;
        }

        data += escaped_size;
        size += escaped_size;
    }

    // write stop bit and return
    (*data) = 0x80;
    return size;
}