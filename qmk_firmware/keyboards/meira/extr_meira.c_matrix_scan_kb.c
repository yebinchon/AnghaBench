
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int TWIInit () ;
 int force_issi_refresh () ;
 scalar_t__ isTWIReady () ;
 int matrix_scan_user () ;
 int update_issi (int,int) ;
 int wdt_reset () ;
 int xprintf (char*) ;

void matrix_scan_kb(void)
{
    matrix_scan_user();
}
