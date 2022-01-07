
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int _matrix_scan () ;
 int matrix_scan_quantum () ;

uint8_t matrix_scan(void)
{
 uint8_t ret = _matrix_scan();
 matrix_scan_quantum();
 return ret;
}
