
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FR_OK ;
 int last_result ;

__attribute__((used)) static void myfatfs_clearerr( void )
{
  last_result = FR_OK;
}
