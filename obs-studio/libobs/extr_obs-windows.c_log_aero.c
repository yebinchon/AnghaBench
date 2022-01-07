
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* dwm_is_composition_enabled_t ) (int*) ;
typedef int HMODULE ;
typedef int BOOL ;


 int FreeLibrary (int ) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LOG_INFO ;
 int LoadLibraryW (char*) ;
 int blog (int ,char*,char*,char const*) ;
 int win_ver ;

__attribute__((used)) static void log_aero(void)
{
 dwm_is_composition_enabled_t composition_enabled = ((void*)0);

 const char *aeroMessage =
  win_ver >= 0x602
   ? " (Aero is always on for windows 8 and above)"
   : "";

 HMODULE dwm = LoadLibraryW(L"dwmapi");
 BOOL bComposition = 1;

 if (!dwm) {
  return;
 }

 composition_enabled = (dwm_is_composition_enabled_t)GetProcAddress(
  dwm, "DwmIsCompositionEnabled");
 if (!composition_enabled) {
  FreeLibrary(dwm);
  return;
 }

 composition_enabled(&bComposition);
 blog(LOG_INFO, "Aero is %s%s", bComposition ? "Enabled" : "Disabled",
      aeroMessage);
}
