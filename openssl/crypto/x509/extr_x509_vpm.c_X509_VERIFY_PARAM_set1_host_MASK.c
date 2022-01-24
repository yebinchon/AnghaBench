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
typedef  int /*<<< orphan*/  X509_VERIFY_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  SET_HOST ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,size_t) ; 

int FUNC1(X509_VERIFY_PARAM *param,
                                const char *name, size_t namelen)
{
    return FUNC0(param, SET_HOST, name, namelen);
}