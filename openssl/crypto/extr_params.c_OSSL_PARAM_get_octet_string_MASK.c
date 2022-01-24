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
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_PARAM_OCTET_STRING ; 
 int FUNC0 (int /*<<< orphan*/  const*,void**,size_t,size_t*,int /*<<< orphan*/ ) ; 

int FUNC1(const OSSL_PARAM *p, void **val, size_t max_len,
                                size_t *used_len)
{
    return FUNC0(p, val, max_len, used_len,
                               OSSL_PARAM_OCTET_STRING);
}