
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static const char *GetFileName(const char *path) {
 const char *pfile = path + strlen (path);
 for (; pfile > path; pfile--) {
  if ((*pfile == '\\') || (*pfile == '/')) {
   pfile++;
   break;
  }
 }
 return pfile;
}
