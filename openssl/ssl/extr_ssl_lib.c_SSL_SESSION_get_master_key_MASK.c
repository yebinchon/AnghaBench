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
struct TYPE_3__ {size_t master_key_length; int /*<<< orphan*/  master_key; } ;
typedef  TYPE_1__ SSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 

size_t FUNC1(const SSL_SESSION *session,
                                  unsigned char *out, size_t outlen)
{
    if (outlen == 0)
        return session->master_key_length;
    if (outlen > session->master_key_length)
        outlen = session->master_key_length;
    FUNC0(out, session->master_key, outlen);
    return outlen;
}