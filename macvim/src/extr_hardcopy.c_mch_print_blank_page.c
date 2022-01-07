
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ mch_print_begin_page (int *) ;
 int mch_print_end_page () ;

int
mch_print_blank_page()
{
    return (mch_print_begin_page(((void*)0)) ? (mch_print_end_page()) : FALSE);
}
