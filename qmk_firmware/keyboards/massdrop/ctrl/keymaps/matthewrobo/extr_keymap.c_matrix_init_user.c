
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autoshift_disable () ;
 int rgb_matrix_sethsv (int,int,int) ;

void matrix_init_user(void)
{
 autoshift_disable();
 rgb_matrix_sethsv(128, 255, 255);


}
