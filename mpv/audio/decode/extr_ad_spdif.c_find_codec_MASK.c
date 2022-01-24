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

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_NONE ; 
 scalar_t__* codecs ; 
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC2(const char *name)
{
    for (int n = 0; codecs[n] != AV_CODEC_ID_NONE; n++) {
        const char *format = FUNC0(codecs[n]);
        if (format && name && FUNC1(format, name) == 0)
            return true;
    }
    return false;
}