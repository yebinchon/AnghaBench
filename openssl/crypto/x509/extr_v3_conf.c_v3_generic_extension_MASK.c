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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  X509V3_CTX ;
struct TYPE_5__ {unsigned char* data; long length; } ;
typedef  TYPE_1__ ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (char const*,long*) ; 
 int /*<<< orphan*/  X509V3_F_V3_GENERIC_EXTENSION ; 
 int /*<<< orphan*/  X509V3_R_EXTENSION_NAME_ERROR ; 
 int /*<<< orphan*/  X509V3_R_EXTENSION_VALUE_ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 unsigned char* FUNC9 (char const*,int /*<<< orphan*/ *,long*) ; 

__attribute__((used)) static X509_EXTENSION *FUNC10(const char *ext, const char *value,
                                            int crit, int gen_type,
                                            X509V3_CTX *ctx)
{
    unsigned char *ext_der = NULL;
    long ext_len = 0;
    ASN1_OBJECT *obj = NULL;
    ASN1_OCTET_STRING *oct = NULL;
    X509_EXTENSION *extension = NULL;

    if ((obj = FUNC4(ext, 0)) == NULL) {
        FUNC7(X509V3_F_V3_GENERIC_EXTENSION,
                  X509V3_R_EXTENSION_NAME_ERROR);
        FUNC3(2, "name=", ext);
        goto err;
    }

    if (gen_type == 1)
        ext_der = FUNC6(value, &ext_len);
    else if (gen_type == 2)
        ext_der = FUNC9(value, ctx, &ext_len);

    if (ext_der == NULL) {
        FUNC7(X509V3_F_V3_GENERIC_EXTENSION,
                  X509V3_R_EXTENSION_VALUE_ERROR);
        FUNC3(2, "value=", value);
        goto err;
    }

    if ((oct = FUNC2()) == NULL) {
        FUNC7(X509V3_F_V3_GENERIC_EXTENSION, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    oct->data = ext_der;
    oct->length = ext_len;
    ext_der = NULL;

    extension = FUNC8(NULL, obj, crit, oct);

 err:
    FUNC0(obj);
    FUNC1(oct);
    FUNC5(ext_der);
    return extension;

}