
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DateStyle ;
 int GUC_ACTION_SAVE ;
 scalar_t__ INTSTYLE_POSTGRES ;
 scalar_t__ IntervalStyle ;
 int NewGUCNestLevel () ;
 int PGC_S_SESSION ;
 int PGC_USERSET ;
 scalar_t__ USE_ISO_DATES ;
 int extra_float_digits ;
 int set_config_option (char*,char*,int ,int ,int ,int,int ,int) ;

int
set_transmission_modes(void)
{
 int nestlevel = NewGUCNestLevel();





 if (DateStyle != USE_ISO_DATES)
  (void) set_config_option("datestyle", "ISO",
         PGC_USERSET, PGC_S_SESSION,
         GUC_ACTION_SAVE, 1, 0, 0);
 if (IntervalStyle != INTSTYLE_POSTGRES)
  (void) set_config_option("intervalstyle", "postgres",
         PGC_USERSET, PGC_S_SESSION,
         GUC_ACTION_SAVE, 1, 0, 0);
 if (extra_float_digits < 3)
  (void) set_config_option("extra_float_digits", "3",
         PGC_USERSET, PGC_S_SESSION,
         GUC_ACTION_SAVE, 1, 0, 0);

 return nestlevel;
}
