
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_3__ {int undo_buffer_size; int undo_text; } ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HeapReAlloc (int ,int ,int ,int) ;
 int ROUND_TO_GROW (int) ;
 int TRACE (char*,int) ;
 int TRUE ;
 int WARN (char*,int) ;

__attribute__((used)) static BOOL EDIT_MakeUndoFit(EDITSTATE *es, UINT size)
{
 UINT alloc_size;

 if (size <= es->undo_buffer_size)
  return TRUE;

 TRACE("trying to ReAlloc to %d+1\n", size);

 alloc_size = ROUND_TO_GROW((size + 1) * sizeof(WCHAR));
 if ((es->undo_text = HeapReAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, es->undo_text, alloc_size))) {
  es->undo_buffer_size = alloc_size/sizeof(WCHAR) - 1;
  return TRUE;
 }
 else
 {
  WARN("FAILED !  We now have %d+1\n", es->undo_buffer_size);
  return FALSE;
 }
}
