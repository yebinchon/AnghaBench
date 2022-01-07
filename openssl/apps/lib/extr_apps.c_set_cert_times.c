
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int ASN1_TIME_set_string_X509 (int ,char const*) ;
 int X509_getm_notAfter (int *) ;
 int X509_getm_notBefore (int *) ;
 int * X509_gmtime_adj (int ,int ) ;
 int * X509_time_adj_ex (int ,int,int ,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

int set_cert_times(X509 *x, const char *startdate, const char *enddate,
                   int days)
{
    if (startdate == ((void*)0) || strcmp(startdate, "today") == 0) {
        if (X509_gmtime_adj(X509_getm_notBefore(x), 0) == ((void*)0))
            return 0;
    } else {
        if (!ASN1_TIME_set_string_X509(X509_getm_notBefore(x), startdate))
            return 0;
    }
    if (enddate == ((void*)0)) {
        if (X509_time_adj_ex(X509_getm_notAfter(x), days, 0, ((void*)0))
            == ((void*)0))
            return 0;
    } else if (!ASN1_TIME_set_string_X509(X509_getm_notAfter(x), enddate)) {
        return 0;
    }
    return 1;
}
