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
typedef  int /*<<< orphan*/  EVP_TEST ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_PKEY_sign ; 
 int /*<<< orphan*/  EVP_PKEY_sign_init ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(EVP_TEST *t, const char *name)
{
    return FUNC0(t, name, 0, EVP_PKEY_sign_init, EVP_PKEY_sign);
}