
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pcre_uchar ;
typedef int compile_data ;
struct TYPE_3__ {struct TYPE_3__* outer; int const* current_branch; } ;
typedef TYPE_1__ branch_chain ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int could_be_empty_branch (int const*,int const*,int ,int *,int *) ;

__attribute__((used)) static BOOL
could_be_empty(const pcre_uchar *code, const pcre_uchar *endcode,
  branch_chain *bcptr, BOOL utf, compile_data *cd)
{
while (bcptr != ((void*)0) && bcptr->current_branch >= code)
  {
  if (!could_be_empty_branch(bcptr->current_branch, endcode, utf, cd, ((void*)0)))
    return FALSE;
  bcptr = bcptr->outer;
  }
return TRUE;
}
