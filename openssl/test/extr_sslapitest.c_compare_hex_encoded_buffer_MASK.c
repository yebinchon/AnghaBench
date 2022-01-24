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
 int /*<<< orphan*/  FUNC0 (char,char const) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int const) ; 

__attribute__((used)) static int FUNC3(const char *hex_encoded,
                                      size_t hex_length,
                                      const uint8_t *raw,
                                      size_t raw_length)
{
    size_t i, j;
    char hexed[3];

    if (!FUNC1(raw_length * 2, hex_length))
        return 1;

    for (i = j = 0; i < raw_length && j + 1 < hex_length; i++, j += 2) {
        FUNC2(hexed, "%02x", raw[i]);
        if (!FUNC0(hexed[0], hex_encoded[j])
                || !FUNC0(hexed[1], hex_encoded[j + 1]))
            return 1;
    }

    return 0;
}