
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int matrix_row_t ;


 int PINB ;
 int PINF ;
 int ROW_SHIFTER ;

__attribute__((used)) inline static matrix_row_t optimized_col_reader(void) {

    return (PINB & (1 << 6) ? 0 : (ROW_SHIFTER << 0)) |
          (PINB & (1 << 2) ? 0 : (ROW_SHIFTER << 1)) |
          (PINB & (1 << 3) ? 0 : (ROW_SHIFTER << 2)) |
          (PINB & (1 << 1) ? 0 : (ROW_SHIFTER << 3)) |
          (PINF & (1 << 7) ? 0 : (ROW_SHIFTER << 4)) |
          (PINF & (1 << 6) ? 0 : (ROW_SHIFTER << 5)) |
          (PINF & (1 << 5) ? 0 : (ROW_SHIFTER << 6)) |
          (PINF & (1 << 4) ? 0 : (ROW_SHIFTER << 7));
}
