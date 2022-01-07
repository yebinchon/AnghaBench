
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* str; char* text; int pkifailure; int pkistatus; } ;


 int CMP_STATUS_TEST_FIXTURE ;
 int EXECUTE_TEST (int ,int ) ;
 int OSSL_CMP_CTX_FAILINFO_badDataFormat ;
 int OSSL_CMP_CTX_FAILINFO_unsupportedVersion ;
 int OSSL_CMP_PKISTATUS_revocationNotification ;
 int SETUP_TEST_FIXTURE (int ,int ) ;
 int execute_PKISI_test ;
 TYPE_1__* fixture ;
 int result ;
 int set_up ;
 int tear_down ;

__attribute__((used)) static int test_PKISI(void)
{
    SETUP_TEST_FIXTURE(CMP_STATUS_TEST_FIXTURE, set_up);
    fixture->pkistatus = OSSL_CMP_PKISTATUS_revocationNotification;
    fixture->str = "PKIStatus: revocation notification - a revocation of the cert has occurred";
    fixture->text = "this is an additional text describing the failure";
    fixture->pkifailure = OSSL_CMP_CTX_FAILINFO_unsupportedVersion |
        OSSL_CMP_CTX_FAILINFO_badDataFormat;
    EXECUTE_TEST(execute_PKISI_test, tear_down);
    return result;
}
