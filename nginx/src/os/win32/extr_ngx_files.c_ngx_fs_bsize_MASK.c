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
typedef  size_t u_long ;
typedef  char u_char ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,size_t*,size_t*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

size_t
FUNC2(u_char *name)
{
    u_char  root[4];
    u_long  sc, bs, nfree, ncl;

    if (name[2] == ':') {
        FUNC1(root, name, 4);
        name = root;
    }

    if (FUNC0((const char *) name, &sc, &bs, &nfree, &ncl) == 0) {
        return 512;
    }

    return sc * bs;
}