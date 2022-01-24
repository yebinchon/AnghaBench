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
struct TYPE_4__ {int /*<<< orphan*/ * params; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ _; } ;
typedef  TYPE_2__ OSSL_STORE_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_INFO_GET1_PARAMS ; 
 scalar_t__ OSSL_STORE_INFO_PARAMS ; 
 int /*<<< orphan*/  OSSL_STORE_R_NOT_PARAMETERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

EVP_PKEY *FUNC2(const OSSL_STORE_INFO *info)
{
    if (info->type == OSSL_STORE_INFO_PARAMS) {
        FUNC0(info->_.params);
        return info->_.params;
    }
    FUNC1(OSSL_STORE_F_OSSL_STORE_INFO_GET1_PARAMS,
                  OSSL_STORE_R_NOT_PARAMETERS);
    return NULL;
}