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
typedef  scalar_t__ LPCWSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2( LPCWSTR a, LPCWSTR b )
{
    if ( a == b )
        return 0;
    if (!FUNC0( a ) && !FUNC0( b ) )
        return FUNC1( a, b );
    /* strings come before ids */
    if (!FUNC0( a ) && FUNC0( b ))
        return -1;
    if (!FUNC0( b ) && FUNC0( a ))
        return 1;
    return ( a < b ) ? -1 : 1;
}