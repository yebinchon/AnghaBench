
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* certificate_file; char* issuer_file; int expected_sct_count; char* sct_text_file; void* sct_dir; void* certs_dir; } ;


 int EXECUTE_CT_TEST () ;
 int SETUP_CT_TEST_FIXTURE () ;
 void* certs_dir ;
 TYPE_1__* fixture ;
 int result ;

__attribute__((used)) static int test_multiple_scts_in_certificate(void)
{
    SETUP_CT_TEST_FIXTURE();
    if (fixture == ((void*)0))
        return 0;
    fixture->certs_dir = certs_dir;
    fixture->certificate_file = "embeddedSCTs3.pem";
    fixture->issuer_file = "embeddedSCTs3_issuer.pem";
    fixture->expected_sct_count = 3;
    fixture->sct_dir = certs_dir;
    fixture->sct_text_file = "embeddedSCTs3.sct";
    EXECUTE_CT_TEST();
    return result;
}
