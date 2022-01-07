
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* certificate_file; char* issuer_file; scalar_t__ expected_sct_count; int certs_dir; } ;


 int EXECUTE_CT_TEST () ;
 int SETUP_CT_TEST_FIXTURE () ;
 int certs_dir ;
 TYPE_1__* fixture ;
 int result ;

__attribute__((used)) static int test_no_scts_in_certificate(void)
{
    SETUP_CT_TEST_FIXTURE();
    if (fixture == ((void*)0))
        return 0;
    fixture->certs_dir = certs_dir;
    fixture->certificate_file = "leaf.pem";
    fixture->issuer_file = "subinterCA.pem";
    fixture->expected_sct_count = 0;
    EXECUTE_CT_TEST();
    return result;
}
