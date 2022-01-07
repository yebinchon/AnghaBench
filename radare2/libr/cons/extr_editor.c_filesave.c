
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int buf ;


 int bytes ;
 int eprintf (char*,...) ;
 scalar_t__ fgets (char*,int,int ) ;
 int free (scalar_t__) ;
 char* lines ;
 int nlines ;
 scalar_t__ path ;
 scalar_t__ r_file_dump (scalar_t__,int const*,int,int ) ;
 int r_str_split (char*,char) ;
 int stdin ;
 scalar_t__ strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static void filesave() {
 char buf[128];
 int i;
 if (!path) {
  eprintf ("File: ");
  buf[0] = 0;
  if (fgets (buf, sizeof (buf) - 1, stdin)) {
   buf[sizeof (buf) - 1] = 0;
   i = strlen (buf);
   if (i > 0) {
    buf[i - 1] = 0;
    free (path);
    path = strdup (buf);
   }
  }
 }
 if (lines) {
  for (i = 0; i < bytes; i++) {
   if (lines[i] == '\0') {
    lines[i] = '\n';
   }
  }
 }
 if (r_file_dump (path, (const ut8 *)lines, bytes, 0)) {
  eprintf ("File '%s' saved (%d byte(s))\n", path, bytes);
 } else {
  eprintf ("Cannot save file\n");
 }
 nlines = r_str_split (lines, '\n');
}
