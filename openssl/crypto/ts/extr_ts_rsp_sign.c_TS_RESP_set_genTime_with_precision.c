
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef int genTime_str ;
typedef int ASN1_GENERALIZEDTIME ;


 int ASN1_GENERALIZEDTIME_free (int *) ;
 int * ASN1_GENERALIZEDTIME_new () ;
 int ASN1_GENERALIZEDTIME_set_string (int *,char*) ;
 int BIO_snprintf (char*,int,char*,long,...) ;
 struct tm* OPENSSL_gmtime (int *,struct tm*) ;
 int TS_F_TS_RESP_SET_GENTIME_WITH_PRECISION ;
 int TS_MAX_CLOCK_PRECISION_DIGITS ;
 int TS_R_COULD_NOT_SET_TIME ;
 int TSerr (int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static ASN1_GENERALIZEDTIME *TS_RESP_set_genTime_with_precision(
        ASN1_GENERALIZEDTIME *asn1_time, long sec, long usec,
        unsigned precision)
{
    time_t time_sec = (time_t)sec;
    struct tm *tm = ((void*)0), tm_result;
    char genTime_str[17 + TS_MAX_CLOCK_PRECISION_DIGITS];
    char *p = genTime_str;
    char *p_end = genTime_str + sizeof(genTime_str);

    if (precision > TS_MAX_CLOCK_PRECISION_DIGITS)
        goto err;

    if ((tm = OPENSSL_gmtime(&time_sec, &tm_result)) == ((void*)0))
        goto err;
    p += BIO_snprintf(p, p_end - p,
                      "%04d%02d%02d%02d%02d%02d",
                      tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday,
                      tm->tm_hour, tm->tm_min, tm->tm_sec);
    if (precision > 0) {
        BIO_snprintf(p, 2 + precision, ".%06ld", usec);
        p += strlen(p);
        while (*--p == '0')
             continue;
        if (*p != '.')
            ++p;
    }
    *p++ = 'Z';
    *p++ = '\0';

    if (asn1_time == ((void*)0)
        && (asn1_time = ASN1_GENERALIZEDTIME_new()) == ((void*)0))
        goto err;
    if (!ASN1_GENERALIZEDTIME_set_string(asn1_time, genTime_str)) {
        ASN1_GENERALIZEDTIME_free(asn1_time);
        goto err;
    }
    return asn1_time;

 err:
    TSerr(TS_F_TS_RESP_SET_GENTIME_WITH_PRECISION, TS_R_COULD_NOT_SET_TIME);
    return ((void*)0);
}
