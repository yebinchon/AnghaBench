
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MMCHS ;
 int IntDisable (int ) ;
 int IntUnregister (int ) ;

void
SDHostIntUnregister(unsigned long ulBase)
{



  IntDisable(INT_MMCHS);




  IntUnregister(INT_MMCHS);
}
