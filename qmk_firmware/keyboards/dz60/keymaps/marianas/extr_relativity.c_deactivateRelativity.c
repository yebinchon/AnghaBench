
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eraseCharCounts () ;
 int eraseKeyCodes () ;
 int eraseTableAbbreviation () ;
 int relativityActive ;
 int rgblight_mode (int) ;
 int tempOff ;

bool deactivateRelativity(void)
{
  rgblight_mode(9);
  eraseKeyCodes();
  eraseTableAbbreviation();
  eraseCharCounts();
  relativityActive = 0;
  tempOff = 0;
  return 0;
}
