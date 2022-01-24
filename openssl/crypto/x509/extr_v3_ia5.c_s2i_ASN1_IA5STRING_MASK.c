#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
typedef  int /*<<< orphan*/  X509V3_CTX ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  ASN1_STRING ;
typedef  TYPE_1__ ASN1_IA5STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  X509V3_F_S2I_ASN1_IA5STRING ; 
 int /*<<< orphan*/  X509V3_R_INVALID_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

ASN1_IA5STRING *FUNC6(X509V3_EXT_METHOD *method,
                                   X509V3_CTX *ctx, const char *str)
{
    ASN1_IA5STRING *ia5;
    if (!str) {
        FUNC3(X509V3_F_S2I_ASN1_IA5STRING,
                  X509V3_R_INVALID_NULL_ARGUMENT);
        return NULL;
    }
    if ((ia5 = FUNC1()) == NULL)
        goto err;
    if (!FUNC2((ASN1_STRING *)ia5, str, FUNC5(str))) {
        FUNC0(ia5);
        return NULL;
    }
#ifdef CHARSET_EBCDIC
    ebcdic2ascii(ia5->data, ia5->data, ia5->length);
#endif                          /* CHARSET_EBCDIC */
    return ia5;
 err:
    FUNC3(X509V3_F_S2I_ASN1_IA5STRING, ERR_R_MALLOC_FAILURE);
    return NULL;
}