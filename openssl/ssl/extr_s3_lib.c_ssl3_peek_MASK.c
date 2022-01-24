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
 int FUNC0 (int /*<<< orphan*/ *,void*,size_t,int,size_t*) ; 

int FUNC1(SSL *s, void *buf, size_t len, size_t *readbytes)
{
    return FUNC0(s, buf, len, 1, readbytes);
}