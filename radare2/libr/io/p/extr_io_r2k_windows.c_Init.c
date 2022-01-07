
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ InitDriver () ;
 scalar_t__ InstallService (char const*,int ,int ) ;
 int RemoveService (int ) ;
 int StartStopService (int ,scalar_t__) ;
 int TEXT (char*) ;
 scalar_t__ TRUE ;
 int eprintf (char*,...) ;
 scalar_t__ strlen (char const*) ;

int Init (const char * driverPath) {
 BOOL ret = FALSE;
 if (InitDriver () == FALSE) {
  if (strlen (driverPath)) {
   StartStopService (TEXT ("r2k"),TRUE);
   RemoveService (TEXT ("r2k"));
   eprintf ("Installing driver: %s\n", driverPath);
   if (InstallService (driverPath, TEXT ("r2k"), TEXT ("r2k"))) {
    StartStopService (TEXT ("r2k"),FALSE);
    ret = InitDriver ();
   }
  } else {
   eprintf ("Error initalizating driver, try r2k://pathtodriver\nEx: radare2.exe r2k://c:\\r2k.sys");
  }
 } else {
  eprintf ("Driver present [OK]\n");
  ret = TRUE;
 }
 return ret;
}
