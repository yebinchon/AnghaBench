
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;


 int ADD_TEST (int ) ;

 int OPT_EOF ;





 void* alg ;
 int expected_fetch_result ;
 void* fetch_property ;
 void* opt_arg () ;
 int opt_next () ;
 scalar_t__ strcmp (void*,char*) ;
 int test_EVP_CIPHER_fetch ;
 int test_EVP_MD_fetch ;
 int use_default_ctx ;

int setup_tests(void)
{
    OPTION_CHOICE o;

    while ((o = opt_next()) != OPT_EOF) {
        switch (o) {
        case 133:
            alg = opt_arg();
            break;
        case 130:
            fetch_property = opt_arg();
            break;
        case 131:
            expected_fetch_result = 0;
            break;
        case 128:
            use_default_ctx = 1;
            break;
        case 129:
           break;
        default:
        case 132:
            return 0;
        }
    }
    if (strcmp(alg, "digest") == 0)
        ADD_TEST(test_EVP_MD_fetch);
    else
        ADD_TEST(test_EVP_CIPHER_fetch);
    return 1;
}
