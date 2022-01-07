
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int OPT_PRINT_NUM_OPTIONS ;
 int p_popt ;
 int * parse_list_options (int ,int ,int ) ;
 int printer_opts ;

char_u *
parse_printoptions()
{
    return parse_list_options(p_popt, printer_opts, OPT_PRINT_NUM_OPTIONS);
}
