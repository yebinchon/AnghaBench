
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int INT ;
typedef int EDITSTATE ;
typedef int BOOL ;


 int EDIT_EM_PosFromChar (int *,int ,int ) ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int SetCaretPos (short,short) ;
 int TRACE (char*,int ,short,short) ;

__attribute__((used)) static void EDIT_SetCaretPos(EDITSTATE *es, INT pos,
        BOOL after_wrap)
{
 LRESULT res = EDIT_EM_PosFromChar(es, pos, after_wrap);
 TRACE("%d - %dx%d\n", pos, (short)LOWORD(res), (short)HIWORD(res));
 SetCaretPos((short)LOWORD(res), (short)HIWORD(res));
}
