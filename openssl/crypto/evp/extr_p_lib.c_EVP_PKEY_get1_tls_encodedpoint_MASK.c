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
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_PKEY_CTRL_GET1_TLS_ENCPT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char**) ; 

size_t FUNC1(EVP_PKEY *pkey, unsigned char **ppt)
{
    int rv;
    rv = FUNC0(pkey, ASN1_PKEY_CTRL_GET1_TLS_ENCPT, 0, ppt);
    if (rv <= 0)
        return 0;
    return rv;
}