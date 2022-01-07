
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef char* PCSTR ;


 int MachConsGetCh () ;
 int printf (char*,...) ;

VOID NoUiMessageBoxCritical(PCSTR MessageText)
{




    printf("%s\n", MessageText);
    printf("Press any key\n");
    MachConsGetCh();
}
