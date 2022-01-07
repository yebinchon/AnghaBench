
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int selection_end; int selection_start; } ;
typedef int * PUINT ;
typedef int LRESULT ;
typedef TYPE_1__ EDITSTATE ;


 int MAKELONG (int ,int ) ;
 int ORDER_UINT (int ,int ) ;

__attribute__((used)) static LRESULT EDIT_EM_GetSel(const EDITSTATE *es, PUINT start, PUINT end)
{
 UINT s = es->selection_start;
 UINT e = es->selection_end;

 ORDER_UINT(s, e);
 if (start)
  *start = s;
 if (end)
  *end = e;
 return MAKELONG(s, e);
}
