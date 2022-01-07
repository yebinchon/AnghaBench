
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_data_bps; } ;


 TYPE_1__ dbginfo ;

__attribute__((used)) static bool hwbreak_present(void)
{
 return (dbginfo.num_data_bps != 0);
}
