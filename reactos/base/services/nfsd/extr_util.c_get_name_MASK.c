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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ USHORT ;

/* Variables and functions */
 int ERROR_BUFFER_OVERFLOW ; 
 int FUNC0 (unsigned char**,scalar_t__*,scalar_t__*,int) ; 

int FUNC1(unsigned char **pos, uint32_t *remaining, const char **out_name)
{
    int status;
    USHORT len;
    
    status = FUNC0(pos, remaining, &len, sizeof(USHORT));
    if (status) goto out;
    if (*remaining < len) {
        status = ERROR_BUFFER_OVERFLOW;
        goto out;
    }
    *out_name = (const char*)*pos;
    *pos += len;
    *remaining -= len;
out:
    return status;
}