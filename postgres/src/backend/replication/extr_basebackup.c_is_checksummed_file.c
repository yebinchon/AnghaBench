
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** noChecksumFiles ;
 scalar_t__ strcmp (char const* const,char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static bool
is_checksummed_file(const char *fullpath, const char *filename)
{
 const char *const *f;


 if (strncmp(fullpath, "./global/", 9) == 0 ||
  strncmp(fullpath, "./base/", 7) == 0 ||
  strncmp(fullpath, "/", 1) == 0)
 {

  for (f = noChecksumFiles; *f; f++)
   if (strcmp(*f, filename) == 0)
    return 0;

  return 1;
 }
 else
  return 0;
}
