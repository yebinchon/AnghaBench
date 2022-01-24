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
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 

__attribute__((used)) static int FUNC1(SSL *ssl, unsigned char *cookie,
                                        size_t *cookie_len)
{
    unsigned int temp;
    int res = FUNC0(ssl, cookie, &temp);
    *cookie_len = temp;
    return res;
}