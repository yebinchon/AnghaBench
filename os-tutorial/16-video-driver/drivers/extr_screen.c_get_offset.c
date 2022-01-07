
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_COLS ;

int get_offset(int col, int row) { return 2 * (row * MAX_COLS + col); }
