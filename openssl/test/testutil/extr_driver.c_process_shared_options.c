
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE_DEFAULT ;


 int OPT_EOF ;







 int check_single_test_params (char*,char*,char*) ;
 int level ;
 char* opt_arg () ;
 int opt_begin () ;
 char* opt_flag () ;
 int opt_help (int ) ;
 int opt_int (char*,int*) ;
 int opt_next () ;
 int set_seed (int) ;
 int show_list ;
 int single_iter ;
 int test_get_options () ;

__attribute__((used)) static int process_shared_options(void)
{
    OPTION_CHOICE_DEFAULT o;
    int value;
    int ret = -1;
    char *flag_test = "";
    char *flag_iter = "";
    char *testname = ((void*)0);

    opt_begin();
    while ((o = opt_next()) != OPT_EOF) {
        switch (o) {

        default:
            break;
        case 134:
            return ret;
        case 133:
            opt_help(test_get_options());
            return 0;
        case 130:
            show_list = 1;
            break;
        case 128:
            flag_test = opt_flag();
            testname = opt_arg();
            break;
        case 131:
            flag_iter = opt_flag();
            if (!opt_int(opt_arg(), &single_iter))
                goto end;
            break;
        case 132:
            if (!opt_int(opt_arg(), &value))
                goto end;
            level = 4 * value;
            break;
        case 129:
            if (!opt_int(opt_arg(), &value))
                goto end;
            set_seed(value);
            break;
        }
    }
    if (!check_single_test_params(testname, flag_test, flag_iter))
        goto end;
    ret = 1;
end:
    return ret;
}
