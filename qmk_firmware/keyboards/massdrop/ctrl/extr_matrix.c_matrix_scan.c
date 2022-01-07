
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int matrix_row_t ;
struct TYPE_10__ {TYPE_4__* Group; } ;
struct TYPE_8__ {int reg; } ;
struct TYPE_7__ {int reg; } ;
struct TYPE_6__ {int reg; } ;
struct TYPE_9__ {TYPE_3__ OUTCLR; TYPE_2__ IN; TYPE_1__ OUTSET; } ;


 scalar_t__ DEBOUNCE ;
 int MATRIX_COLS ;
 int MATRIX_ROWS ;
 size_t PA ;
 size_t PB ;
 TYPE_5__* PORT ;
 int* col_pins ;
 size_t* col_ports ;
 int matrix_scan_quantum () ;
 int* mdebounced ;
 scalar_t__ mdebouncing ;
 int memset (int*,int ,int) ;
 int* mlast ;
 int* mlatest ;
 int* row_masks ;
 int* row_pins ;
 size_t* row_ports ;
 scalar_t__ timer_read64 () ;
 int wait_us (int) ;

uint8_t matrix_scan(void)
{
    uint8_t mchanged;
    uint8_t row;
    uint8_t col;
    uint32_t scans[2];

    if (timer_read64() < mdebouncing) return 1;

    memset(mlatest, 0, MATRIX_ROWS * sizeof(matrix_row_t));

    for (col = 0; col < MATRIX_COLS; col++)
    {
        PORT->Group[col_ports[col]].OUTSET.reg = 1 << col_pins[col];

        wait_us(1);

        scans[PA] = PORT->Group[PA].IN.reg & row_masks[PA];
        scans[PB] = PORT->Group[PB].IN.reg & row_masks[PB];

        PORT->Group[col_ports[col]].OUTCLR.reg = 1 << col_pins[col];

        for (row = 0; row < MATRIX_ROWS; row++)
        {

            if (scans[row_ports[row]] & (1 << row_pins[row]))
                mlatest[row] |= 1 << col;
        }
    }

    mchanged = 0;

    for (row = 0; row < MATRIX_ROWS; row++)
    {
        if (mlast[row] != mlatest[row])
            mchanged = 1;
        mlast[row] = mlatest[row];
    }

    if (!mchanged)
    {
        for (row = 0; row < MATRIX_ROWS; row++)
            mdebounced[row] = mlatest[row];
        mdebouncing = 0;
    }
    else
    {

        mdebouncing = timer_read64() + DEBOUNCE;
    }

    matrix_scan_quantum();

    return 1;
}
