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
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/  const*,void**,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int FUNC2(unsigned char **dst, size_t *dst_len,
                              const OSSL_PARAM *p)
{
    FUNC0(*dst, *dst_len);
    *dst = NULL;
    return FUNC1(p, (void **)dst, 0, dst_len);
}