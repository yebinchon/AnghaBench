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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef  int /*<<< orphan*/  genTime_str ;
typedef  int /*<<< orphan*/  ASN1_GENERALIZEDTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,long,...) ; 
 struct tm* FUNC4 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  TS_F_TS_RESP_SET_GENTIME_WITH_PRECISION ; 
 int TS_MAX_CLOCK_PRECISION_DIGITS ; 
 int /*<<< orphan*/  TS_R_COULD_NOT_SET_TIME ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static ASN1_GENERALIZEDTIME *FUNC7(
        ASN1_GENERALIZEDTIME *asn1_time, long sec, long usec,
        unsigned precision)
{
    time_t time_sec = (time_t)sec;
    struct tm *tm = NULL, tm_result;
    char genTime_str[17 + TS_MAX_CLOCK_PRECISION_DIGITS];
    char *p = genTime_str;
    char *p_end = genTime_str + sizeof(genTime_str);

    if (precision > TS_MAX_CLOCK_PRECISION_DIGITS)
        goto err;

    if ((tm = FUNC4(&time_sec, &tm_result)) == NULL)
        goto err;

    /*
     * Put "genTime_str" in GeneralizedTime format.  We work around the
     * restrictions imposed by rfc3280 (i.e. "GeneralizedTime values MUST
     * NOT include fractional seconds") and OpenSSL related functions to
     * meet the rfc3161 requirement: "GeneralizedTime syntax can include
     * fraction-of-second details".
     */
    p += FUNC3(p, p_end - p,
                      "%04d%02d%02d%02d%02d%02d",
                      tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday,
                      tm->tm_hour, tm->tm_min, tm->tm_sec);
    if (precision > 0) {
        FUNC3(p, 2 + precision, ".%06ld", usec);
        p += FUNC6(p);

        /*
         * To make things a bit harder, X.690 | ISO/IEC 8825-1 provides the
         * following restrictions for a DER-encoding, which OpenSSL
         * (specifically ASN1_GENERALIZEDTIME_check() function) doesn't
         * support: "The encoding MUST terminate with a "Z" (which means
         * "Zulu" time). The decimal point element, if present, MUST be the
         * point option ".". The fractional-seconds elements, if present,
         * MUST omit all trailing 0's; if the elements correspond to 0, they
         * MUST be wholly omitted, and the decimal point element also MUST be
         * omitted."
         */
        /*
         * Remove trailing zeros. The dot guarantees the exit condition of
         * this loop even if all the digits are zero.
         */
        while (*--p == '0')
             continue;
        if (*p != '.')
            ++p;
    }
    *p++ = 'Z';
    *p++ = '\0';

    if (asn1_time == NULL
        && (asn1_time = FUNC1()) == NULL)
        goto err;
    if (!FUNC2(asn1_time, genTime_str)) {
        FUNC0(asn1_time);
        goto err;
    }
    return asn1_time;

 err:
    FUNC5(TS_F_TS_RESP_SET_GENTIME_WITH_PRECISION, TS_R_COULD_NOT_SET_TIME);
    return NULL;
}