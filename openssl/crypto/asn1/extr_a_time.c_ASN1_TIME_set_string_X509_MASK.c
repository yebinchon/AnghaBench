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
struct tm {int /*<<< orphan*/  tm_year; } ;
struct TYPE_5__ {unsigned char* data; scalar_t__ type; scalar_t__ length; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ASN1_TIME ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_STRING_FLAG_X509_TIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (scalar_t__) ; 
 scalar_t__ V_ASN1_GENERALIZEDTIME ; 
 void* V_ASN1_UTCTIME ; 
 int /*<<< orphan*/  FUNC4 (struct tm*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC7 (char const*) ; 

int FUNC8(ASN1_TIME *s, const char *str)
{
    ASN1_TIME t;
    struct tm tm;
    int rv = 0;

    t.length = FUNC7(str);
    t.data = (unsigned char *)str;
    t.flags = ASN1_STRING_FLAG_X509_TIME;

    t.type = V_ASN1_UTCTIME;

    if (!FUNC1(&t)) {
        t.type = V_ASN1_GENERALIZEDTIME;
        if (!FUNC1(&t))
            goto out;
    }

    /*
     * Per RFC 5280 (section 4.1.2.5.), the valid input time
     * strings should be encoded with the following rules:
     *
     * 1. UTC: YYMMDDHHMMSSZ, if YY < 50 (20YY) --> UTC: YYMMDDHHMMSSZ
     * 2. UTC: YYMMDDHHMMSSZ, if YY >= 50 (19YY) --> UTC: YYMMDDHHMMSSZ
     * 3. G'd: YYYYMMDDHHMMSSZ, if YYYY >= 2050 --> G'd: YYYYMMDDHHMMSSZ
     * 4. G'd: YYYYMMDDHHMMSSZ, if YYYY < 2050 --> UTC: YYMMDDHHMMSSZ
     *
     * Only strings of the 4th rule should be reformatted, but since a
     * UTC can only present [1950, 2050), so if the given time string
     * is less than 1950 (e.g. 19230419000000Z), we do nothing...
     */

    if (s != NULL && t.type == V_ASN1_GENERALIZEDTIME) {
        if (!FUNC4(&tm, &t))
            goto out;
        if (FUNC5(tm.tm_year)) {
            t.length -= 2;
            /*
             * it's OK to let original t.data go since that's assigned
             * to a piece of memory allocated outside of this function.
             * new t.data would be freed after ASN1_STRING_copy is done.
             */
            t.data = FUNC3(t.length + 1);
            if (t.data == NULL)
                goto out;
            FUNC6(t.data, str + 2, t.length);
            t.type = V_ASN1_UTCTIME;
        }
    }

    if (s == NULL || FUNC0((ASN1_STRING *)s, (ASN1_STRING *)&t))
        rv = 1;

    if (t.data != (unsigned char *)str)
        FUNC2(t.data);
out:
    return rv;
}