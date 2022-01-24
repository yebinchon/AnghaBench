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
struct TYPE_4__ {scalar_t__ length; scalar_t__ data; } ;
typedef  TYPE_1__ ASN1_IA5STRING ;

/* Variables and functions */
 int X509_V_ERR_PERMITTED_VIOLATION ; 
 int X509_V_ERR_UNSUPPORTED_NAME_SYNTAX ; 
 int X509_V_OK ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC3(ASN1_IA5STRING *eml, ASN1_IA5STRING *base)
{
    const char *baseptr = (char *)base->data;
    const char *emlptr = (char *)eml->data;

    const char *baseat = FUNC1(baseptr, '@');
    const char *emlat = FUNC1(emlptr, '@');
    if (!emlat)
        return X509_V_ERR_UNSUPPORTED_NAME_SYNTAX;
    /* Special case: initial '.' is RHS match */
    if (!baseat && (*baseptr == '.')) {
        if (eml->length > base->length) {
            emlptr += eml->length - base->length;
            if (FUNC0(baseptr, emlptr) == 0)
                return X509_V_OK;
        }
        return X509_V_ERR_PERMITTED_VIOLATION;
    }

    /* If we have anything before '@' match local part */

    if (baseat) {
        if (baseat != baseptr) {
            if ((baseat - baseptr) != (emlat - emlptr))
                return X509_V_ERR_PERMITTED_VIOLATION;
            /* Case sensitive match of local part */
            if (FUNC2(baseptr, emlptr, emlat - emlptr))
                return X509_V_ERR_PERMITTED_VIOLATION;
        }
        /* Position base after '@' */
        baseptr = baseat + 1;
    }
    emlptr = emlat + 1;
    /* Just have hostname left to match: case insensitive */
    if (FUNC0(baseptr, emlptr))
        return X509_V_ERR_PERMITTED_VIOLATION;

    return X509_V_OK;

}