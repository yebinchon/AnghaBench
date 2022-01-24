#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; } ;
typedef  TYPE_1__ BUF_MEM ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 void* FUNC0 (void*,unsigned char const**,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__**) ; 

void *FUNC3(const ASN1_ITEM *it, BIO *in, void *x)
{
    BUF_MEM *b = NULL;
    const unsigned char *p;
    void *ret = NULL;
    int len;

    len = FUNC2(in, &b);
    if (len < 0)
        goto err;

    p = (const unsigned char *)b->data;
    ret = FUNC0(x, &p, len, it);
 err:
    FUNC1(b);
    return ret;
}