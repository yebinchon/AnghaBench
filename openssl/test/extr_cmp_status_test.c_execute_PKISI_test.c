
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int pkistatus; int pkifailure; int text; int str; } ;
struct TYPE_13__ {scalar_t__ data; } ;
typedef TYPE_1__ OSSL_CMP_PKISI ;
typedef TYPE_2__ CMP_STATUS_TEST_FIXTURE ;
typedef TYPE_1__ ASN1_UTF8STRING ;


 int OSSL_CMP_PKIFAILUREINFO_MAX ;
 int OSSL_CMP_PKISI_free (TYPE_1__*) ;
 int TEST_int_eq (int,int) ;
 int TEST_ptr (TYPE_1__*) ;
 int TEST_str_eq (int ,char*) ;
 char* ossl_cmp_PKIStatus_to_string (int) ;
 int ossl_cmp_pkisi_get0_statusstring (TYPE_1__*) ;
 int ossl_cmp_pkisi_get_pkifailureinfo (TYPE_1__*) ;
 int ossl_cmp_pkisi_get_pkistatus (TYPE_1__*) ;
 int ossl_cmp_pkisi_pkifailureinfo_check (TYPE_1__*,int) ;
 TYPE_1__* ossl_cmp_statusinfo_new (int,int,int ) ;
 TYPE_1__* sk_ASN1_UTF8STRING_value (int ,int ) ;

__attribute__((used)) static int execute_PKISI_test(CMP_STATUS_TEST_FIXTURE *fixture)
{
    OSSL_CMP_PKISI *si = ((void*)0);
    int status;
    ASN1_UTF8STRING *statusString = ((void*)0);
    int res = 0, i;

    if (!TEST_ptr(si = ossl_cmp_statusinfo_new(fixture->pkistatus,
                                               fixture->pkifailure,
                                               fixture->text)))
        goto end;

    status = ossl_cmp_pkisi_get_pkistatus(si);
    if (!TEST_int_eq(fixture->pkistatus, status)
            || !TEST_str_eq(fixture->str, ossl_cmp_PKIStatus_to_string(status)))
        goto end;

    if (!TEST_ptr(statusString =
                  sk_ASN1_UTF8STRING_value(ossl_cmp_pkisi_get0_statusstring(si),
                                           0))
            || !TEST_str_eq(fixture->text, (char *)statusString->data))
        goto end;

    if (!TEST_int_eq(fixture->pkifailure,
                     ossl_cmp_pkisi_get_pkifailureinfo(si)))
        goto end;
    for (i = 0; i <= OSSL_CMP_PKIFAILUREINFO_MAX; i++)
        if (!TEST_int_eq((fixture->pkifailure >> i) & 1,
                         ossl_cmp_pkisi_pkifailureinfo_check(si, i)))
            goto end;

    res = 1;

 end:
    OSSL_CMP_PKISI_free(si);
    return res;
}
