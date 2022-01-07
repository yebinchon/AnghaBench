
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int ASN1_GENERALIZEDTIME ;


 struct tm* OPENSSL_gmtime (int *,struct tm*) ;
 int OPENSSL_gmtime_adj (struct tm*,int,long) ;
 int V_ASN1_GENERALIZEDTIME ;
 int * asn1_time_from_tm (int *,struct tm*,int ) ;

ASN1_GENERALIZEDTIME *ASN1_GENERALIZEDTIME_adj(ASN1_GENERALIZEDTIME *s,
                                               time_t t, int offset_day,
                                               long offset_sec)
{
    struct tm *ts;
    struct tm data;

    ts = OPENSSL_gmtime(&t, &data);
    if (ts == ((void*)0))
        return ((void*)0);

    if (offset_day || offset_sec) {
        if (!OPENSSL_gmtime_adj(ts, offset_day, offset_sec))
            return ((void*)0);
    }

    return asn1_time_from_tm(s, ts, V_ASN1_GENERALIZEDTIME);
}
