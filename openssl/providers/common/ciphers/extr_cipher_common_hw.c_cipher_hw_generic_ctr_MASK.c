#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ctr; } ;
struct TYPE_5__ {unsigned int num; int /*<<< orphan*/  block; int /*<<< orphan*/  buf; int /*<<< orphan*/  iv; int /*<<< orphan*/  ks; TYPE_1__ stream; } ;
typedef  TYPE_2__ PROV_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ) ; 

int FUNC2(PROV_CIPHER_CTX *dat, unsigned char *out,
                          const unsigned char *in, size_t len)
{
    unsigned int num = dat->num;

    if (dat->stream.ctr)
        FUNC1(in, out, len, dat->ks, dat->iv, dat->buf,
                                    &num, dat->stream.ctr);
    else
        FUNC0(in, out, len, dat->ks, dat->iv, dat->buf,
                              &num, dat->block);
    dat->num = num;

    return 1;
}