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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,...) ; 
 int SSL_CB_ALERT ; 
 int SSL_CB_EXIT ; 
 int SSL_CB_LOOP ; 
 int SSL_CB_READ ; 
 int SSL_ST_ACCEPT ; 
 int SSL_ST_CONNECT ; 
 int SSL_ST_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  bio_err ; 

void FUNC4(const SSL *s, int where, int ret)
{
    const char *str;
    int w;

    w = where & ~SSL_ST_MASK;

    if (w & SSL_ST_CONNECT)
        str = "SSL_connect";
    else if (w & SSL_ST_ACCEPT)
        str = "SSL_accept";
    else
        str = "undefined";

    if (where & SSL_CB_LOOP) {
        FUNC0(bio_err, "%s:%s\n", str, FUNC3(s));
    } else if (where & SSL_CB_ALERT) {
        str = (where & SSL_CB_READ) ? "read" : "write";
        FUNC0(bio_err, "SSL3 alert %s:%s:%s\n",
                   str,
                   FUNC2(ret),
                   FUNC1(ret));
    } else if (where & SSL_CB_EXIT) {
        if (ret == 0)
            FUNC0(bio_err, "%s:failed in %s\n",
                       str, FUNC3(s));
        else if (ret < 0)
            FUNC0(bio_err, "%s:error in %s\n",
                       str, FUNC3(s));
    }
}