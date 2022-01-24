#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int sb_size; char* sb_start; } ;
struct TYPE_5__ {char* av_val; int av_len; } ;
struct TYPE_6__ {int m_resplen; TYPE_3__ m_sb; int /*<<< orphan*/  m_polling; TYPE_1__ m_clientID; int /*<<< orphan*/  m_unackd; } ;
typedef  TYPE_2__ RTMP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(RTMP *r, int fill)
{
    char *ptr;
    int hlen;

restart:
    if (fill)
        FUNC0(&r->m_sb);
    if (r->m_sb.sb_size < 13)
    {
        if (fill)
            goto restart;
        return -2;
    }
    if (FUNC5(r->m_sb.sb_start, "HTTP/1.1 200 ", 13))
        return -1;
    r->m_sb.sb_start[r->m_sb.sb_size] = '\0';
    if (!FUNC6(r->m_sb.sb_start, "\r\n\r\n"))
    {
        if (fill)
            goto restart;
        return -2;
    }

    ptr = r->m_sb.sb_start + sizeof("HTTP/1.1 200");
    while ((ptr = FUNC6(ptr, "Content-")))
    {
        if (!FUNC4(ptr+8, "length:", 7)) break;
        ptr += 8;
    }
    if (!ptr)
        return -1;
    hlen = FUNC1(ptr+16);
    ptr = FUNC6(ptr+16, "\r\n\r\n");
    if (!ptr)
        return -1;
    ptr += 4;
    if (ptr + (r->m_clientID.av_val ? 1 : hlen) > r->m_sb.sb_start + r->m_sb.sb_size)
    {
        if (fill)
            goto restart;
        return -2;
    }
    r->m_sb.sb_size -= ptr - r->m_sb.sb_start;
    r->m_sb.sb_start = ptr;
    r->m_unackd--;

    if (!r->m_clientID.av_val)
    {
        r->m_clientID.av_len = hlen;
        r->m_clientID.av_val = FUNC2(hlen+1);
        if (!r->m_clientID.av_val)
            return -1;
        r->m_clientID.av_val[0] = '/';
        FUNC3(r->m_clientID.av_val+1, ptr, hlen-1);
        r->m_clientID.av_val[hlen] = 0;
        r->m_sb.sb_size = 0;
    }
    else
    {
        r->m_polling = *ptr++;
        r->m_resplen = hlen - 1;
        r->m_sb.sb_start++;
        r->m_sb.sb_size--;
    }
    return 0;
}