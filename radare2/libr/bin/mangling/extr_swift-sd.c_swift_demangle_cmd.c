
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int have_swift_demangle ;
 char* r_file_path (char*) ;
 char* r_str_newf (char*,char*) ;
 int r_str_trim (char*) ;
 char* r_sys_cmd_strf (char*,char*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static char *swift_demangle_cmd(const char *s) {

 static char *swift_demangle = ((void*)0);
 if (have_swift_demangle == -1) {
  if (!swift_demangle) {
   have_swift_demangle = 0;
   swift_demangle = r_file_path ("swift-demangle");
   if (!swift_demangle || !strcmp (swift_demangle, "swift-demangle")) {
    char *xcrun = r_file_path ("xcrun");
    if (xcrun) {
     if (strcmp (xcrun, "xcrun")) {
      free (swift_demangle);
      swift_demangle = r_str_newf ("%s swift-demangle", xcrun);
      have_swift_demangle = 1;
     }
     free (xcrun);
    }
   }
  }
 }
 if (swift_demangle) {
  if (strstr (s, "'") || strstr (s, "\\")) {

   return ((void*)0);
  }

  char *res = r_sys_cmd_strf ("%s -compact '%s'",
   swift_demangle, s);
  if (res && !*res) {
   free (res);
   res = ((void*)0);
  }
  r_str_trim (res);
  return res;
 }
 return ((void*)0);
}
