
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int style; int hlocapp; int hloc32W; } ;
typedef int HLOCAL ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_UnlockBuffer (TYPE_1__*,int ) ;
 int ES_MULTILINE ;
 int LocalSize (int ) ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;

__attribute__((used)) static HLOCAL EDIT_EM_GetHandle(EDITSTATE *es)
{
    if (!(es->style & ES_MULTILINE))
        return 0;

    EDIT_UnlockBuffer(es, TRUE);


    es->hlocapp = es->hloc32W;

    TRACE("Returning %p, LocalSize() = %ld\n", es->hlocapp, LocalSize(es->hlocapp));
    return es->hlocapp;
}
