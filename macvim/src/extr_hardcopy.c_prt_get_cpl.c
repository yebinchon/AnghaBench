
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRINT_NUMBER_WIDTH ;
 int prt_char_width ;
 int prt_left_margin ;
 int prt_number_width ;
 scalar_t__ prt_out_mbyte ;
 int prt_right_margin ;
 scalar_t__ prt_use_number () ;

__attribute__((used)) static int
prt_get_cpl()
{
    if (prt_use_number())
    {
 prt_number_width = PRINT_NUMBER_WIDTH * prt_char_width;







 prt_left_margin += prt_number_width;
    }
    else
 prt_number_width = 0.0;

    return (int)((prt_right_margin - prt_left_margin) / prt_char_width);
}
