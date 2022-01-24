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
 int FUNC0 (char const*,size_t) ; 
 scalar_t__ lsapi_mode ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,char const*,int) ; 

__attribute__((used)) static size_t FUNC3(const char *str, size_t str_length)
{
    int ret;
    int remain;
    if ( lsapi_mode ) {
        ret  = FUNC0( str, str_length );
        if ( ret < str_length ) {
            FUNC1();
            return str_length - ret;
        }
    } else {
        remain = str_length;
        while( remain > 0 ) {
            ret = FUNC2( 1, str, remain );
            if ( ret <= 0 ) {
                FUNC1();
                return str_length - remain;
            }
            str += ret;
            remain -= ret;
        }
    }
    return str_length;
}