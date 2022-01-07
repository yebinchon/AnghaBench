
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_COLS ;

int get_offset_row(int offset) { return offset / (2 * MAX_COLS); }
