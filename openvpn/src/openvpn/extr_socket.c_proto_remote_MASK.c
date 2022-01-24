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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PROTO_N ; 
 int PROTO_TCP_CLIENT ; 
 int PROTO_TCP_SERVER ; 
 int PROTO_UDP ; 

const char *
FUNC1(int proto, bool remote)
{
    FUNC0(proto >= 0 && proto < PROTO_N);
    if (proto == PROTO_UDP)
    {
        return "UDPv4";
    }

    if ( (remote && proto == PROTO_TCP_CLIENT)
         || (!remote && proto == PROTO_TCP_SERVER))
    {
        return "TCPv4_SERVER";
    }
    if ( (remote && proto == PROTO_TCP_SERVER)
         || (!remote && proto == PROTO_TCP_CLIENT))
    {
        return "TCPv4_CLIENT";
    }

    FUNC0(0);
    return ""; /* Make the compiler happy */
}