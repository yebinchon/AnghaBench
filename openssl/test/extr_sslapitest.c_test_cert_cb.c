
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int test_cert_cb_int (int ,int) ;

__attribute__((used)) static int test_cert_cb(int tst)
{
    int testresult = 1;


    testresult &= test_cert_cb_int(TLS1_2_VERSION, tst);


    testresult &= test_cert_cb_int(TLS1_3_VERSION, tst);


    return testresult;
}
