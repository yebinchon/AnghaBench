
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int ASN1_TIME ;


 int ASN1_TIME_to_tm (int *,struct tm*) ;
 int V_ASN1_UNDEF ;
 int * asn1_time_from_tm (int *,struct tm*,int ) ;

int ASN1_TIME_normalize(ASN1_TIME *t)
{
    struct tm tm;

    if (!ASN1_TIME_to_tm(t, &tm))
        return 0;

    return asn1_time_from_tm(t, &tm, V_ASN1_UNDEF) != ((void*)0);
}
