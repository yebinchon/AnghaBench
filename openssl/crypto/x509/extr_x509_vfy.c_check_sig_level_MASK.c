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
struct TYPE_5__ {TYPE_1__* param; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_4__ {int auth_level; } ;

/* Variables and functions */
 int NUM_AUTH_LEVELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int* minbits_table ; 

__attribute__((used)) static int FUNC1(X509_STORE_CTX *ctx, X509 *cert)
{
    int secbits = -1;
    int level = ctx->param->auth_level;

    if (level <= 0)
        return 1;
    if (level > NUM_AUTH_LEVELS)
        level = NUM_AUTH_LEVELS;

    if (!FUNC0(cert, NULL, NULL, &secbits, NULL))
        return 0;

    return secbits >= minbits_table[level - 1];
}