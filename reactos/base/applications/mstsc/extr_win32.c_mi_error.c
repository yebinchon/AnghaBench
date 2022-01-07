
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;


 int MB_OK ;
 int MessageBox (int ,int *,int *,int ) ;
 int g_Wnd ;
 int printf (char*) ;
 int str_to_uni (int *,char*) ;

void
mi_error(char * msg)
{



  TCHAR lmsg[512];
  TCHAR ltitle[512];

  str_to_uni(lmsg, msg);
  str_to_uni(ltitle, "Error");
  MessageBox(g_Wnd, lmsg, ltitle, MB_OK);

}
