
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_defined_types; int * defined_types; scalar_t__ allowed; } ;


 int CV_MAX_MODULES ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int * cv_current_module ;
 TYPE_1__* cv_zmodules ;

__attribute__((used)) static void codeview_clear_type_table(void)
{
    int i;

    for (i = 0; i < CV_MAX_MODULES; i++)
    {
        if (cv_zmodules[i].allowed)
            HeapFree(GetProcessHeap(), 0, cv_zmodules[i].defined_types);
        cv_zmodules[i].allowed = FALSE;
        cv_zmodules[i].defined_types = ((void*)0);
        cv_zmodules[i].num_defined_types = 0;
    }
    cv_current_module = ((void*)0);
}
