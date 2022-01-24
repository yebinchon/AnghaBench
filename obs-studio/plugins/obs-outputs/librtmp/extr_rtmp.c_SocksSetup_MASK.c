#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char const* av_val; scalar_t__ av_len; } ;
struct TYPE_7__ {char* av_val; int av_len; } ;
struct TYPE_8__ {int socksport; TYPE_1__ sockshost; } ;
struct TYPE_9__ {TYPE_2__ Link; } ;
typedef  TYPE_3__ RTMP ;
typedef  TYPE_4__ AVal ;

/* Variables and functions */
 int /*<<< orphan*/  RTMP_LOGDEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(RTMP *r, AVal *sockshost)
{
    if (sockshost->av_len)
    {
        const char *socksport = FUNC2(sockshost->av_val, ':');
        char *hostname = FUNC3(sockshost->av_val);

        if (socksport)
            hostname[socksport - sockshost->av_val] = '\0';
        r->Link.sockshost.av_val = hostname;
        r->Link.sockshost.av_len = (int)FUNC4(hostname);

        r->Link.socksport = socksport ? FUNC1(socksport + 1) : 1080;
        FUNC0(RTMP_LOGDEBUG, "Connecting via SOCKS proxy: %s:%d", r->Link.sockshost.av_val,
                 r->Link.socksport);
    }
    else
    {
        r->Link.sockshost.av_val = NULL;
        r->Link.sockshost.av_len = 0;
        r->Link.socksport = 0;
    }
}