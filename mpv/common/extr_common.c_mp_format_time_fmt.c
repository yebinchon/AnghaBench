
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MP_NOPTS_VALUE ;
 int appendf (char**,char*,...) ;
 int lrint (double) ;
 int talloc_free (char*) ;
 char* talloc_strdup (int *,char*) ;

char *mp_format_time_fmt(const char *fmt, double time)
{
    if (time == MP_NOPTS_VALUE)
        return talloc_strdup(((void*)0), "unknown");
    char *sign = time < 0 ? "-" : "";
    time = time < 0 ? -time : time;
    long long int itime = time;
    long long int h, m, tm, s;
    int ms = lrint((time - itime) * 1000);
    if (ms >= 1000) {
        ms -= 1000;
        itime += 1;
    }
    s = itime;
    tm = s / 60;
    h = s / 3600;
    s -= h * 3600;
    m = s / 60;
    s -= m * 60;
    char *res = talloc_strdup(((void*)0), "");
    while (*fmt) {
        if (fmt[0] == '%') {
            fmt++;
            switch (fmt[0]) {
            case 'h': appendf(&res, "%s%lld", sign, h); break;
            case 'H': appendf(&res, "%s%02lld", sign, h); break;
            case 'm': appendf(&res, "%s%lld", sign, tm); break;
            case 'M': appendf(&res, "%02lld", m); break;
            case 's': appendf(&res, "%s%lld", sign, itime); break;
            case 'S': appendf(&res, "%02lld", s); break;
            case 'T': appendf(&res, "%03d", ms); break;
            case 'f': appendf(&res, "%f", time); break;
            case '%': appendf(&res, "%s", "%"); break;
            default: goto error;
            }
            fmt++;
        } else {
            appendf(&res, "%c", *fmt);
            fmt++;
        }
    }
    return res;
error:
    talloc_free(res);
    return ((void*)0);
}
