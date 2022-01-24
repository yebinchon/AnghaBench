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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
struct TYPE_3__ {void* (* d2i ) (int /*<<< orphan*/ *,unsigned char const**,int) ;scalar_t__ it; } ;
typedef  TYPE_1__ X509V3_EXT_METHOD ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,unsigned char const**,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

void *FUNC7(X509_EXTENSION *ext)
{
    const X509V3_EXT_METHOD *method;
    const unsigned char *p;
    ASN1_STRING *extvalue;
    int extlen;

    if ((method = FUNC4(ext)) == NULL)
        return NULL;
    extvalue = FUNC5(ext);
    p = FUNC1(extvalue);
    extlen = FUNC2(extvalue);
    if (method->it)
        return FUNC3(NULL, &p, extlen, FUNC0(method->it));
    return method->d2i(NULL, &p, extlen);
}