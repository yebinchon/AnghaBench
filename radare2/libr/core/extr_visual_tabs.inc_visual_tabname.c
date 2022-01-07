
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int name ;
struct TYPE_6__ {int tab; int tabs; } ;
struct TYPE_8__ {TYPE_1__ visual; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ RCoreVisualTab ;
typedef TYPE_3__ RCore ;


 int prompt_read (char*,char*,int) ;
 TYPE_2__* r_list_get_n (int ,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void visual_tabname (RCore *core) {
 if (!core->visual.tabs) {
  return;
 }
 char name[32]={0};
 prompt_read ("tab name: ", name, sizeof (name));
 RCoreVisualTab *tab = r_list_get_n (core->visual.tabs, core->visual.tab);
 if (tab) {
  strcpy (tab->name, name);
 }
}
