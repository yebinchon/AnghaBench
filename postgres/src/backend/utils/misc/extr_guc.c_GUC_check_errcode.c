
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GUC_check_errcode_value ;

void
GUC_check_errcode(int sqlerrcode)
{
 GUC_check_errcode_value = sqlerrcode;
}
