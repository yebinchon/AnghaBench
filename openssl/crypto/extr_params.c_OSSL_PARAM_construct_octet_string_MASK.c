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
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,void*,size_t) ; 

OSSL_PARAM FUNC1(const char *key, void *buf,
                                             size_t bsize)
{
    return FUNC0(key, OSSL_PARAM_OCTET_STRING, buf, bsize);
}