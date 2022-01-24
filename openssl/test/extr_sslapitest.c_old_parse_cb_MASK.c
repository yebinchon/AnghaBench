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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clntparseoldcb ; 
 int /*<<< orphan*/  srvparseoldcb ; 

__attribute__((used)) static int FUNC1(SSL *s, unsigned int ext_type, const unsigned char *in,
                        size_t inlen, int *al, void *parse_arg)
{
    int *server = (int *)parse_arg;

    if (FUNC0(s))
        srvparseoldcb++;
    else
        clntparseoldcb++;

    if (*server != FUNC0(s)
            || inlen != sizeof(char)
            || *in != 1)
        return -1;

    return 1;
}