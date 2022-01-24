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
typedef  void EVP_PKEY ;
typedef  TYPE_1__ BUF_MEM ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 void* FUNC2 (int,void**,unsigned char const**,int) ; 

EVP_PKEY *FUNC3(int type, EVP_PKEY **a, BIO *in)
{
    BUF_MEM *b = NULL;
    const unsigned char *p;
    void *ret = NULL;
    int len;

    len = FUNC1(in, &b);
    if (len < 0)
        goto err;

    p = (unsigned char *)b->data;
    ret = FUNC2(type, a, &p, len);
err:
    FUNC0(b);
    return ret;
}