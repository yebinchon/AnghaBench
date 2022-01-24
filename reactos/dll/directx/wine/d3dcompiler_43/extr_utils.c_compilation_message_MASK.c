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
struct compilation_messages {int capacity; char* string; int size; } ;
typedef  int /*<<< orphan*/  __ms_va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MESSAGEBUFFER_INITIAL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void FUNC5(struct compilation_messages *msg, const char *fmt, __ms_va_list args)
{
    char* buffer;
    int rc, size;

    if (msg->capacity == 0)
    {
        msg->string = FUNC2(MESSAGEBUFFER_INITIAL_SIZE);
        if (msg->string == NULL)
        {
            FUNC0("Error allocating memory for parser messages\n");
            return;
        }
        msg->capacity = MESSAGEBUFFER_INITIAL_SIZE;
    }

    while (1)
    {
        rc = FUNC4(msg->string + msg->size,
                msg->capacity - msg->size, fmt, args);

        if (rc < 0 || rc >= msg->capacity - msg->size)
        {
            size = msg->capacity * 2;
            buffer = FUNC3(msg->string, size);
            if (buffer == NULL)
            {
                FUNC0("Error reallocating memory for parser messages\n");
                return;
            }
            msg->string = buffer;
            msg->capacity = size;
        }
        else
        {
            FUNC1("%s", msg->string + msg->size);
            msg->size += rc;
            return;
        }
    }
}