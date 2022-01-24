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
struct TYPE_4__ {int /*<<< orphan*/  (* cbc ) (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  block; int /*<<< orphan*/  iv; int /*<<< orphan*/  ks; scalar_t__ enc; TYPE_1__ stream; } ;
typedef  TYPE_2__ PROV_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(PROV_CIPHER_CTX *dat, unsigned char *out,
                          const unsigned char *in, size_t len)
{
    if (dat->stream.cbc)
        (*dat->stream.cbc) (in, out, len, dat->ks, dat->iv, dat->enc);
    else if (dat->enc)
        FUNC1(in, out, len, dat->ks, dat->iv, dat->block);
    else
        FUNC0(in, out, len, dat->ks, dat->iv, dat->block);

    return 1;
}