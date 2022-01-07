
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDOG_STCTRLH ;
 int WDOG_STCTRLH_ALLOWUPDATE ;

__attribute__((used)) static void startup_default_early_hook(void) { WDOG_STCTRLH = WDOG_STCTRLH_ALLOWUPDATE; }
