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
typedef  int /*<<< orphan*/  OSSL_CMP_PKIFREETEXT ;
typedef  int /*<<< orphan*/  ASN1_UTF8STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(OSSL_CMP_PKIFREETEXT *ft, const char *text)
{
    ASN1_UTF8STRING *utf8string;

    if (!FUNC3(ft != NULL && text != NULL))
        return 0;
    if ((utf8string = FUNC2()) == NULL)
        return 0;
    if (!FUNC0(utf8string, text, -1))
        goto err;
    if (!FUNC4(ft, utf8string))
        goto err;
    return 1;

 err:
    FUNC1(utf8string);
    return 0;
}