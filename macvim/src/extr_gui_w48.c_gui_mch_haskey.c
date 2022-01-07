
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ char_u ;
struct TYPE_2__ {scalar_t__ vim_code1; scalar_t__ vim_code0; } ;


 int FAIL ;
 scalar_t__ NUL ;
 int OK ;
 TYPE_1__* special_keys ;

int
gui_mch_haskey(char_u *name)
{
    int i;

    for (i = 0; special_keys[i].vim_code1 != NUL; i++)
 if (name[0] == special_keys[i].vim_code0 &&
      name[1] == special_keys[i].vim_code1)
     return OK;
    return FAIL;
}
