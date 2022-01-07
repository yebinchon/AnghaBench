
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pos_T ;
struct TYPE_2__ {int b_ind_maxcomment; } ;


 TYPE_1__* curbuf ;
 int * find_start_comment (int ) ;

__attribute__((used)) static pos_T *
ind_find_start_comment()
{
    return find_start_comment(curbuf->b_ind_maxcomment);
}
