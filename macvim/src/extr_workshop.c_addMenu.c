
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cbuf ;
struct TYPE_5__ {int * verb; int * accel; int * name; } ;
typedef TYPE_1__ MenuMap ;


 int BUFSIZ ;
 int MENU_INC ;
 int TRUE ;
 int coloncmd (char*,int ) ;
 TYPE_1__* menuMap ;
 int menuMapMax ;
 int menuMapSize ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int * strdup (char*) ;
 int vim_snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ workshopHotKeysEnabled ;

__attribute__((used)) static void
addMenu(
 char *menu,
 char *accel,
 char *verb)
{
    MenuMap *newMap;
    char cbuf[BUFSIZ];

    if (menuMapSize >= menuMapMax)
    {
 newMap = realloc(menuMap,
  sizeof(MenuMap) * (menuMapMax + MENU_INC));
 if (newMap != ((void*)0))
 {
     menuMap = newMap;
     menuMapMax += MENU_INC;
 }
    }
    if (menuMapSize < menuMapMax)
    {
 menuMap[menuMapSize].name = strdup(menu);
 menuMap[menuMapSize].accel = accel && *accel ? strdup(accel) : ((void*)0);
 menuMap[menuMapSize++].verb = strdup(verb);
 if (accel && workshopHotKeysEnabled)
 {
     vim_snprintf(cbuf, sizeof(cbuf),
     "map %s :wsverb %s<CR>", accel, verb);
     coloncmd(cbuf, TRUE);
 }
    }
}
