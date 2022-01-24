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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  RedisSock ;
typedef  int REDIS_REPLY_TYPE ;

/* Variables and functions */
 int FAILURE ; 
#define  TYPE_BULK 132 
#define  TYPE_ERR 131 
#define  TYPE_INT 130 
#define  TYPE_LINE 129 
#define  TYPE_MULTIBULK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  redis_exception_ce ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int
FUNC7(RedisSock *redis_sock, int elements, int status_strings,
                               zval *z_ret)
{
    long reply_info;
    REDIS_REPLY_TYPE reply_type;
    zval z_subelem;

    // Iterate while we have elements
    while(elements > 0) {
        // Attempt to read our reply type
        if(FUNC3(redis_sock, &reply_type, &reply_info
                                ) < 0)
        {
            FUNC6(redis_exception_ce, 0,
                "protocol error, couldn't parse MULTI-BULK response\n");
            return FAILURE;
        }

        // Switch on our reply-type byte
        switch(reply_type) {
            case TYPE_ERR:
            case TYPE_LINE:
                FUNC5(redis_sock, reply_type, status_strings,
                                        &z_subelem);
                FUNC1(z_ret, &z_subelem);
                break;
            case TYPE_INT:
                // Add our long value
                FUNC0(z_ret, reply_info);
                break;
            case TYPE_BULK:
                // Init a zval for our bulk response, read and add it
                FUNC4(redis_sock, reply_info, &z_subelem);
                FUNC1(z_ret, &z_subelem);
                break;
            case TYPE_MULTIBULK:
                // Construct an array for our sub element, and add it, and recurse
                FUNC2(&z_subelem);
                FUNC1(z_ret, &z_subelem);
                FUNC7(redis_sock, reply_info, status_strings,
                                               &z_subelem);
                break;
            default:
                // Stop the compiler from whinging
                break;
        }

        /* Decrement our element counter */
        elements--;
    }

    return 0;
}