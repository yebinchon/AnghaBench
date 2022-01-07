
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ EOVERFLOW ;
 scalar_t__ S_ISDIR (int ) ;
 char* emalloc (size_t) ;
 scalar_t__ errno ;
 int free (char*) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool
itsdir(char const *name)
{
 struct stat st;
 int res = stat(name, &st);




 if (res == 0 || errno == EOVERFLOW)
 {
  size_t n = strlen(name);
  char *nameslashdot = emalloc(n + 3);
  bool dir;

  memcpy(nameslashdot, name, n);
  strcpy(&nameslashdot[n], &"/."[!(n && name[n - 1] != '/')]);
  dir = stat(nameslashdot, &st) == 0 || errno == EOVERFLOW;
  free(nameslashdot);
  return dir;
 }
 return 0;
}
