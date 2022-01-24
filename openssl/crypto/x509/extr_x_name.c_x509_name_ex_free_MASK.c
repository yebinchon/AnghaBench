#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* canon_enc; int /*<<< orphan*/  entries; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_1__ X509_NAME ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  X509_NAME_ENTRY_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    X509_NAME *a;

    if (pval == NULL || *pval == NULL)
        return;
    a = (X509_NAME *)*pval;

    FUNC0(a->bytes);
    FUNC2(a->entries, X509_NAME_ENTRY_free);
    FUNC1(a->canon_enc);
    FUNC1(a);
    *pval = NULL;
}