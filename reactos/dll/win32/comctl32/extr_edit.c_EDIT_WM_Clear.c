
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int style; } ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_EM_ReplaceSel (TYPE_1__*,int ,int *,int ,int ,int ) ;
 int ES_READONLY ;
 int TRUE ;

__attribute__((used)) static inline void EDIT_WM_Clear(EDITSTATE *es)
{

 if(es->style & ES_READONLY)
     return;

 EDIT_EM_ReplaceSel(es, TRUE, ((void*)0), 0, TRUE, TRUE);
}
