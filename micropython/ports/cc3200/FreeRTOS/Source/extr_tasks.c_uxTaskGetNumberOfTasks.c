
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBaseType_t ;


 int uxCurrentNumberOfTasks ;

UBaseType_t uxTaskGetNumberOfTasks( void )
{


 return uxCurrentNumberOfTasks;
}
