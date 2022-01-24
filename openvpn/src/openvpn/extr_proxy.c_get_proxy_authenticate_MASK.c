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
typedef  int /*<<< orphan*/  socket_descriptor_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROXY ; 
 int HTTP_AUTH_BASIC ; 
 int HTTP_AUTH_DIGEST ; 
 int HTTP_AUTH_NONE ; 
 int HTTP_AUTH_NTLM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ *,int volatile*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC7(socket_descriptor_t sd,
                       int timeout,
                       char **data,
                       volatile int *signal_received)
{
    char buf[256];
    int ret = HTTP_AUTH_NONE;
    while (true)
    {
        if (!FUNC3(sd, buf, sizeof(buf), timeout, true, NULL, signal_received))
        {
            FUNC1(*data);
            *data = NULL;
            return HTTP_AUTH_NONE;
        }
        FUNC0(buf);
        if (!FUNC5(buf))
        {
            return ret;
        }
        if (ret == HTTP_AUTH_NONE && !FUNC6(buf, "Proxy-Authenticate: ", 20))
        {
            if (!FUNC6(buf+20, "Basic ", 6))
            {
                FUNC2(D_PROXY, "PROXY AUTH BASIC: '%s'", buf);
                *data = FUNC4(buf+26, NULL);
                ret = HTTP_AUTH_BASIC;
            }
#if PROXY_DIGEST_AUTH
            else if (!strncmp(buf+20, "Digest ", 7))
            {
                msg(D_PROXY, "PROXY AUTH DIGEST: '%s'", buf);
                *data = string_alloc(buf+27, NULL);
                ret = HTTP_AUTH_DIGEST;
            }
#endif
#if NTLM
            else if (!strncmp(buf+20, "NTLM", 4))
            {
                msg(D_PROXY, "PROXY AUTH NTLM: '%s'", buf);
                *data = NULL;
                ret = HTTP_AUTH_NTLM;
            }
#endif
        }
    }
}