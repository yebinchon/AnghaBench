
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pass ;
struct TYPE_3__ {char* member_0; char* member_1; int password; } ;
typedef TYPE_1__ PW_CB_DATA ;


 scalar_t__ TEST_int_gt (int ,int ) ;
 scalar_t__ TEST_str_eq (char*,int ) ;
 int destroy_ui_method () ;
 int password_callback (char*,int,int ,TYPE_1__*) ;
 int setup_ui_method () ;

__attribute__((used)) static int test_new_ui(void)
{
    PW_CB_DATA cb_data = {
        "password",
        "prompt"
    };
    char pass[16];
    int ok = 0;

    setup_ui_method();
    if (TEST_int_gt(password_callback(pass, sizeof(pass), 0, &cb_data), 0)
            && TEST_str_eq(pass, cb_data.password))
        ok = 1;
    destroy_ui_method();
    return ok;
}
