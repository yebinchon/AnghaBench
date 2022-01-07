
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tm {int tm_year; } ;
struct TYPE_5__ {unsigned char* data; scalar_t__ type; scalar_t__ length; int flags; } ;
typedef TYPE_1__ ASN1_TIME ;
typedef int ASN1_STRING ;


 int ASN1_STRING_FLAG_X509_TIME ;
 scalar_t__ ASN1_STRING_copy (int *,int *) ;
 int ASN1_TIME_check (TYPE_1__*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_zalloc (scalar_t__) ;
 scalar_t__ V_ASN1_GENERALIZEDTIME ;
 void* V_ASN1_UTCTIME ;
 int asn1_time_to_tm (struct tm*,TYPE_1__*) ;
 scalar_t__ is_utc (int ) ;
 int memcpy (unsigned char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int ASN1_TIME_set_string_X509(ASN1_TIME *s, const char *str)
{
    ASN1_TIME t;
    struct tm tm;
    int rv = 0;

    t.length = strlen(str);
    t.data = (unsigned char *)str;
    t.flags = ASN1_STRING_FLAG_X509_TIME;

    t.type = V_ASN1_UTCTIME;

    if (!ASN1_TIME_check(&t)) {
        t.type = V_ASN1_GENERALIZEDTIME;
        if (!ASN1_TIME_check(&t))
            goto out;
    }
    if (s != ((void*)0) && t.type == V_ASN1_GENERALIZEDTIME) {
        if (!asn1_time_to_tm(&tm, &t))
            goto out;
        if (is_utc(tm.tm_year)) {
            t.length -= 2;





            t.data = OPENSSL_zalloc(t.length + 1);
            if (t.data == ((void*)0))
                goto out;
            memcpy(t.data, str + 2, t.length);
            t.type = V_ASN1_UTCTIME;
        }
    }

    if (s == ((void*)0) || ASN1_STRING_copy((ASN1_STRING *)s, (ASN1_STRING *)&t))
        rv = 1;

    if (t.data != (unsigned char *)str)
        OPENSSL_free(t.data);
out:
    return rv;
}
