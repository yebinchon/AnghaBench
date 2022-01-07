
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMP_STATUS_TEST_FIXTURE ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void tear_down(CMP_STATUS_TEST_FIXTURE *fixture)
{
    OPENSSL_free(fixture);
}
