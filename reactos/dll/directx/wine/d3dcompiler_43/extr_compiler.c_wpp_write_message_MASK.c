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
typedef  int /*<<< orphan*/  __ms_va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int MESSAGEBUFFER_INITIAL_SIZE ; 
 int FUNC4 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 char* wpp_messages ; 
 int wpp_messages_capacity ; 
 int wpp_messages_size ; 

__attribute__((used)) static void FUNC5(const char *fmt, __ms_va_list args)
{
    char* newbuffer;
    int rc, newsize;

    if(wpp_messages_capacity == 0)
    {
        wpp_messages = FUNC2(FUNC1(), 0, MESSAGEBUFFER_INITIAL_SIZE);
        if(wpp_messages == NULL)
            return;

        wpp_messages_capacity = MESSAGEBUFFER_INITIAL_SIZE;
    }

    while(1)
    {
        rc = FUNC4(wpp_messages + wpp_messages_size,
                       wpp_messages_capacity - wpp_messages_size, fmt, args);

        if (rc < 0 ||                                           /* C89 */
            rc >= wpp_messages_capacity - wpp_messages_size) {  /* C99 */
            /* Resize the buffer */
            newsize = wpp_messages_capacity * 2;
            newbuffer = FUNC3(FUNC1(), 0, wpp_messages, newsize);
            if(newbuffer == NULL)
            {
                FUNC0("Error reallocating memory for parser messages\n");
                return;
            }
            wpp_messages = newbuffer;
            wpp_messages_capacity = newsize;
        }
        else
        {
            wpp_messages_size += rc;
            return;
        }
    }
}