#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int modified; int /*<<< orphan*/ * entries; int /*<<< orphan*/ * bytes; } ;
typedef  TYPE_1__ X509_NAME ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_X509_NAME_EX_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

__attribute__((used)) static int FUNC6(ASN1_VALUE **val, const ASN1_ITEM *it)
{
    X509_NAME *ret = FUNC3(sizeof(*ret));

    if (ret == NULL)
        goto memerr;
    if ((ret->entries = FUNC5()) == NULL)
        goto memerr;
    if ((ret->bytes = FUNC1()) == NULL)
        goto memerr;
    ret->modified = 1;
    *val = (ASN1_VALUE *)ret;
    return 1;

 memerr:
    FUNC0(ASN1_F_X509_NAME_EX_NEW, ERR_R_MALLOC_FAILURE);
    if (ret) {
        FUNC4(ret->entries);
        FUNC2(ret);
    }
    return 0;
}