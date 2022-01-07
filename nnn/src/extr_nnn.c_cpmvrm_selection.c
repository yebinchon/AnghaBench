
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum action { ____Placeholder_action } action ;
struct TYPE_2__ {scalar_t__ filtermode; } ;


 int FALSE ;
 int FILTER ;
 int F_CLI ;
 int MSGWAIT ;
 size_t OPERATION_FAILED ;



 size_t SH_EXEC ;
 int TRUE ;
 TYPE_1__ cfg ;
 int clearselection () ;
 int cp ;
 int cpmv_rename (int,char*) ;
 int endselection () ;
 int g_buf ;
 int get_input (char*) ;
 int * messages ;
 int mv ;
 int opstr (int ,int ) ;
 int printwait (int ,int*) ;
 int rmmulstr (int ) ;
 int selsafe () ;
 int spawn (int ,int ,int *,char*,int ) ;
 int * utils ;

__attribute__((used)) static bool cpmvrm_selection(enum action sel, char *path, int *presel)
{
 int r;

 endselection();

 if (!selsafe()) {
  *presel = MSGWAIT;
  return FALSE;
 }

 switch (sel) {
 case 130:
  opstr(g_buf, cp);
  break;
 case 128:
  opstr(g_buf, mv);
  break;
 case 129:
  r = get_input("'c'p / 'm'v as?");
  if (r != 'c' && r != 'm') {
   if (cfg.filtermode)
    *presel = FILTER;
   return FALSE;
  }

  if (!cpmv_rename(r, path)) {
   printwait(messages[OPERATION_FAILED], presel);
   return FALSE;
  }
  break;
 default:
  rmmulstr(g_buf);
  break;
 }

 if (sel != 129)
  spawn(utils[SH_EXEC], g_buf, ((void*)0), path, F_CLI);


 if (sel != 130)
  clearselection();

 if (cfg.filtermode)
  *presel = FILTER;

 return TRUE;
}
