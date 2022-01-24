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
struct http_proxy_info {int dummy; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,char*) ; 

const char *
FUNC3(const struct http_proxy_info *p, struct gc_arena *gc)
{
    struct buffer out = FUNC1(96, gc);
    /* try a minimal NTLM handshake
     *
     * http://davenport.sourceforge.net/ntlm.html
     *
     * This message contains only the NTLMSSP signature,
     * the NTLM message type,
     * and the minimal set of flags (Negotiate NTLM and Negotiate OEM).
     *
     */
    FUNC2(&out, "%s", "TlRMTVNTUAABAAAAAgIAAA==");
    return (FUNC0(&out));
}