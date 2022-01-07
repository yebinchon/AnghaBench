
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ h; scalar_t__ v; scalar_t__ x; scalar_t__ y; int buttons; } ;
typedef TYPE_1__ report_mouse_t ;


 int MATRIX_COLS ;
 int MATRIX_ROWS ;
 int MATRIX_ROWS_PER_SIDE ;
 int MOUSE_BTN1 ;
 int PINE ;
 scalar_t__ SCROLLSTEP ;
 int TRKBTN ;
 scalar_t__ TRKSTEP ;
 int debounce (int ,int ,int,int) ;
 int enableInterrupts () ;
 scalar_t__ init_mcp23018 () ;
 int layer_state ;
 int matrix ;
 scalar_t__ matrix_is_on (int,int) ;
 int matrix_scan_quantum () ;
 scalar_t__ mcp23018_reset_loop ;
 scalar_t__ mcp23018_status ;
 TYPE_1__ pointing_device_get_report () ;
 int pointing_device_set_report (TYPE_1__) ;
 int print (char*) ;
 int raw_matrix ;
 int select_row (int) ;
 int store_raw_matrix_row (int) ;
 scalar_t__ tbDnCnt ;
 scalar_t__ tbLtCnt ;
 scalar_t__ tbRtCnt ;
 scalar_t__ tbUpCnt ;
 int trkBtnState ;
 int unselect_rows () ;
 int xprintf (char*,int,int,...) ;

uint8_t matrix_scan(void) {

    enableInterrupts();
    if (mcp23018_status) {
        if (++mcp23018_reset_loop == 0) {



            print("trying to reset mcp23018\n");
            mcp23018_status = init_mcp23018();
            if (mcp23018_status) {
                print("left side not responding\n");
            } else {
                print("left side attached\n");
            }
        }
    }

    bool changed = 0;
    for (uint8_t i = 0; i < MATRIX_ROWS_PER_SIDE; i++) {

        uint8_t left_index = i;
        uint8_t right_index = i + MATRIX_ROWS_PER_SIDE;
        select_row(left_index);
        select_row(right_index);




        changed |= store_raw_matrix_row(left_index);
        changed |= store_raw_matrix_row(right_index);

        unselect_rows();
    }

    debounce(raw_matrix, matrix, MATRIX_ROWS, changed);
    matrix_scan_quantum();

    enableInterrupts();







    return 1;
}
