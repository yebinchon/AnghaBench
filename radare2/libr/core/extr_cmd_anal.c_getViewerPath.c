
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* r_file_path (char const*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static char *getViewerPath() {
 int i;
 const char *viewers[] = {



  "open",
  "geeqie",
  "gqview",
  "eog",
  "xdg-open",

  ((void*)0)
 };
 for (i = 0; viewers[i]; i++) {
  char *viewerPath = r_file_path (viewers[i]);
  if (viewerPath && strcmp (viewerPath, viewers[i])) {
   return viewerPath;
  }
  free (viewerPath);
 }
 return ((void*)0);
}
