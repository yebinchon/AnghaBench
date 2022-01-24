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
struct web_client {size_t stats_sent_bytes; int /*<<< orphan*/  id; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_DEFLATE ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t FUNC4 (struct web_client*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ssize_t FUNC5(struct web_client *w, size_t len)
{
    FUNC1(D_DEFLATE, "%llu: OPEN CHUNK of %zu bytes (hex: %zx).", w->id, len, len);
    char buf[24];
    ssize_t bytes;
    bytes = (ssize_t)FUNC2(buf, "%zX\r\n", len);
    buf[bytes] = 0x00;

    bytes = FUNC4(w,buf,FUNC3(buf),0);
    if(bytes > 0) {
        FUNC1(D_DEFLATE, "%llu: Sent chunk header %zd bytes.", w->id, bytes);
        w->stats_sent_bytes += bytes;
    }

    else if(bytes == 0) {
        FUNC1(D_WEB_CLIENT, "%llu: Did not send chunk header to the client.", w->id);
        FUNC0(w);
    }
    else {
        FUNC1(D_WEB_CLIENT, "%llu: Failed to send chunk header to client.", w->id);
        FUNC0(w);
    }

    return bytes;
}