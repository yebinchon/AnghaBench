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
struct lsapi_packet_header {int dummy; } ;

/* Variables and functions */
 scalar_t__ LSAPI_PACKET_HEADER_LEN ; 
 int /*<<< orphan*/  LSAPI_STDERR_STREAM ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct lsapi_packet_header*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static inline int FUNC4( int fd )
{
    char achBuf[16];
    FUNC1( (struct lsapi_packet_header *)achBuf, LSAPI_STDERR_STREAM,
                        8 + LSAPI_PACKET_HEADER_LEN );
    FUNC2( &achBuf[8], "\0PID", 4 );
    *((int *)&achBuf[12]) = FUNC0();

    if ( FUNC3( fd, achBuf, 16 ) < 16 )
        return -1;
    return 0;
}