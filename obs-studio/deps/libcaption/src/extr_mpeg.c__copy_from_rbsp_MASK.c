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
typedef  int uint8_t ;

/* Variables and functions */
 size_t FUNC0 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,size_t) ; 

size_t FUNC2(uint8_t* data, uint8_t* payloadData, size_t payloadSize)
{
    size_t total = 0;

    while (payloadSize) {
        size_t bytes = FUNC0(payloadData, payloadSize);

        if (bytes > payloadSize) {
            return 0;
        }

        FUNC1(data, payloadData, bytes);

        if (bytes == payloadSize) {
            return total + bytes;
        }

        data[bytes] = 3; // insert emulation prevention byte
        data += bytes + 1;
        total += bytes + 1;
        payloadData += bytes;
        payloadSize -= bytes;
    }

    return total;
}