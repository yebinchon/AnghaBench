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

/* Variables and functions */
 int FORMAT_ASN1 ; 
 int FORMAT_ENGINE ; 
 int FORMAT_HTTP ; 
 int FORMAT_MSBLOB ; 
 int FORMAT_NSS ; 
 int FORMAT_PEM ; 
 int FORMAT_PKCS12 ; 
 int FORMAT_PVK ; 
 int FORMAT_SMIME ; 
 int FORMAT_TEXT ; 
 unsigned long OPT_FMT_ENGINE ; 
 unsigned long OPT_FMT_HTTP ; 
 unsigned long OPT_FMT_MSBLOB ; 
 unsigned long OPT_FMT_NSS ; 
 unsigned long OPT_FMT_PEMDER ; 
 unsigned long OPT_FMT_PKCS12 ; 
 unsigned long OPT_FMT_PVK ; 
 unsigned long OPT_FMT_SMIME ; 
 unsigned long OPT_FMT_TEXT ; 
 int FUNC0 (char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

int FUNC2(const char *s, unsigned long flags, int *result)
{
    switch (*s) {
    default:
        return 0;
    case 'D':
    case 'd':
        if ((flags & OPT_FMT_PEMDER) == 0)
            return FUNC0(s, flags);
        *result = FORMAT_ASN1;
        break;
    case 'T':
    case 't':
        if ((flags & OPT_FMT_TEXT) == 0)
            return FUNC0(s, flags);
        *result = FORMAT_TEXT;
        break;
    case 'N':
    case 'n':
        if ((flags & OPT_FMT_NSS) == 0)
            return FUNC0(s, flags);
        if (FUNC1(s, "NSS") != 0 && FUNC1(s, "nss") != 0)
            return FUNC0(s, flags);
        *result = FORMAT_NSS;
        break;
    case 'S':
    case 's':
        if ((flags & OPT_FMT_SMIME) == 0)
            return FUNC0(s, flags);
        *result = FORMAT_SMIME;
        break;
    case 'M':
    case 'm':
        if ((flags & OPT_FMT_MSBLOB) == 0)
            return FUNC0(s, flags);
        *result = FORMAT_MSBLOB;
        break;
    case 'E':
    case 'e':
        if ((flags & OPT_FMT_ENGINE) == 0)
            return FUNC0(s, flags);
        *result = FORMAT_ENGINE;
        break;
    case 'H':
    case 'h':
        if ((flags & OPT_FMT_HTTP) == 0)
            return FUNC0(s, flags);
        *result = FORMAT_HTTP;
        break;
    case '1':
        if ((flags & OPT_FMT_PKCS12) == 0)
            return FUNC0(s, flags);
        *result = FORMAT_PKCS12;
        break;
    case 'P':
    case 'p':
        if (s[1] == '\0' || FUNC1(s, "PEM") == 0 || FUNC1(s, "pem") == 0) {
            if ((flags & OPT_FMT_PEMDER) == 0)
                return FUNC0(s, flags);
            *result = FORMAT_PEM;
        } else if (FUNC1(s, "PVK") == 0 || FUNC1(s, "pvk") == 0) {
            if ((flags & OPT_FMT_PVK) == 0)
                return FUNC0(s, flags);
            *result = FORMAT_PVK;
        } else if (FUNC1(s, "P12") == 0 || FUNC1(s, "p12") == 0
                   || FUNC1(s, "PKCS12") == 0 || FUNC1(s, "pkcs12") == 0) {
            if ((flags & OPT_FMT_PKCS12) == 0)
                return FUNC0(s, flags);
            *result = FORMAT_PKCS12;
        } else {
            return 0;
        }
        break;
    }
    return 1;
}