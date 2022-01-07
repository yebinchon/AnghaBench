
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fprintf (int ,char*,...) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
Win32WarningHandler(const char* module, const char* fmt, va_list ap)
{
 if (module != ((void*)0))
  fprintf(stderr, "%s: ", module);
 fprintf(stderr, "Warning, ");
 vfprintf(stderr, fmt, ap);
 fprintf(stderr, ".\n");
}
