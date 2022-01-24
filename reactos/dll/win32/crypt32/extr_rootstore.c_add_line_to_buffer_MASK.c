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
struct DynamicBuffer {int used; int allocated; scalar_t__* data; } ;
typedef  char* LPCSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__* FUNC0 (int) ; 
 scalar_t__* FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int INITIAL_CERT_BUFFER ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static BOOL FUNC5(struct DynamicBuffer *buffer, LPCSTR line)
{
    BOOL ret;

    if (buffer->used + FUNC4(line) + 1 > buffer->allocated)
    {
        if (!buffer->allocated)
        {
            buffer->data = FUNC0(INITIAL_CERT_BUFFER);
            if (buffer->data)
            {
                buffer->data[0] = 0;
                buffer->allocated = INITIAL_CERT_BUFFER;
            }
        }
        else
        {
            DWORD new_size = FUNC2(buffer->allocated * 2,
             buffer->used + FUNC4(line) + 1);

            buffer->data = FUNC1(buffer->data, new_size);
            if (buffer->data)
                buffer->allocated = new_size;
        }
    }
    if (buffer->data)
    {
        FUNC3((char *)buffer->data + FUNC4((char *)buffer->data), line);
        /* Not strlen + 1, otherwise we'd count the NULL for every line's
         * addition (but we overwrite the previous NULL character.)  Not an
         * overrun, we allocate strlen + 1 bytes above.
         */
        buffer->used += FUNC4(line);
        ret = TRUE;
    }
    else
        ret = FALSE;
    return ret;
}