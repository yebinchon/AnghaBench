#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ecx_key_op_t ;
struct TYPE_10__ {int /*<<< orphan*/ * pubkey; int /*<<< orphan*/ * privkey; } ;
struct TYPE_7__ {TYPE_4__* ecx; } ;
struct TYPE_9__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_8__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  TYPE_4__ ECX_KEY ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_PCTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*) ; 
 scalar_t__ KEY_OP_PRIVATE ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(BIO *bp, const EVP_PKEY *pkey, int indent,
                         ASN1_PCTX *ctx, ecx_key_op_t op)
{
    const ECX_KEY *ecxkey = pkey->pkey.ecx;
    const char *nm = FUNC3(pkey->ameth->pkey_id);

    if (op == KEY_OP_PRIVATE) {
        if (ecxkey == NULL || ecxkey->privkey == NULL) {
            if (FUNC1(bp, "%*s<INVALID PRIVATE KEY>\n", indent, "") <= 0)
                return 0;
            return 1;
        }
        if (FUNC1(bp, "%*s%s Private-Key:\n", indent, "", nm) <= 0)
            return 0;
        if (FUNC1(bp, "%*spriv:\n", indent, "") <= 0)
            return 0;
        if (FUNC0(bp, ecxkey->privkey, FUNC2(pkey),
                           indent + 4) == 0)
            return 0;
    } else {
        if (ecxkey == NULL) {
            if (FUNC1(bp, "%*s<INVALID PUBLIC KEY>\n", indent, "") <= 0)
                return 0;
            return 1;
        }
        if (FUNC1(bp, "%*s%s Public-Key:\n", indent, "", nm) <= 0)
            return 0;
    }
    if (FUNC1(bp, "%*spub:\n", indent, "") <= 0)
        return 0;

    if (FUNC0(bp, ecxkey->pubkey, FUNC2(pkey),
                       indent + 4) == 0)
        return 0;
    return 1;
}