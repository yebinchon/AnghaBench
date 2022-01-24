#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* prefix; int /*<<< orphan*/  prefixlen; } ;
typedef  TYPE_1__ SSL_CONF_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(SSL_CONF_CTX *cctx, const char *pre)
{
    char *tmp = NULL;
    if (pre) {
        tmp = FUNC1(pre);
        if (tmp == NULL)
            return 0;
    }
    FUNC0(cctx->prefix);
    cctx->prefix = tmp;
    if (tmp)
        cctx->prefixlen = FUNC2(tmp);
    else
        cctx->prefixlen = 0;
    return 1;
}