
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;


 int ADD_TEST (int ) ;
 int OPT_EOF ;



 int max ;
 int opt_next () ;
 int test_ed448 ;
 int test_x448 ;
 int verbose ;

int setup_tests(void)
{
    OPTION_CHOICE o;

    while ((o = opt_next()) != OPT_EOF) {
        switch (o) {
        case 128:
            break;
        default:
            return 0;





        case 129:
            max = 1000000;
            break;
        case 130:
            verbose = 1;
            break;
        }
    }

    ADD_TEST(test_x448);
    ADD_TEST(test_ed448);
    return 1;
}
