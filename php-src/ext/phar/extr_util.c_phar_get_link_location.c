
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* link; int filename; } ;
typedef TYPE_1__ phar_entry_info ;


 char* estrdup (int ) ;
 int spprintf (char**,int ,char*,int ,char*) ;
 char* strrchr (int ,char) ;

__attribute__((used)) static char *phar_get_link_location(phar_entry_info *entry)
{
 char *p, *ret = ((void*)0);
 if (!entry->link) {
  return ((void*)0);
 }
 if (entry->link[0] == '/') {
  return estrdup(entry->link + 1);
 }
 p = strrchr(entry->filename, '/');
 if (p) {
  *p = '\0';
  spprintf(&ret, 0, "%s/%s", entry->filename, entry->link);
  return ret;
 }
 return entry->link;
}
