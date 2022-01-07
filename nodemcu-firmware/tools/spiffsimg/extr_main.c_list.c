
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spiffs_dirent {size_t type; int size; int name; } ;
typedef int spiffs_DIR ;


 int SPIFFS_closedir (int *) ;
 int SPIFFS_opendir (int *,char*,int *) ;
 scalar_t__ SPIFFS_readdir (int *,struct spiffs_dirent*) ;
 int die (char*) ;
 int fs ;
 int memcpy (char*,int ,int) ;
 int printf (char*,char const,int,char*) ;

__attribute__((used)) static void list (void)
{
  spiffs_DIR dir;
  if (!SPIFFS_opendir (&fs, "/", &dir))
    die ("spiffs_opendir");
  struct spiffs_dirent de;
  while (SPIFFS_readdir (&dir, &de))
  {
    static const char types[] = "?fdhs";
    char name[sizeof(de.name)+1] = { 0 };
    memcpy (name, de.name, sizeof(de.name));
    printf("%c %6u %s\n", types[de.type], de.size, name);
  }
  SPIFFS_closedir (&dir);
}
