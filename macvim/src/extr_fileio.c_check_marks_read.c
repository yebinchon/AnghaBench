
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ b_marks_read; int * b_ffname; } ;


 scalar_t__ TRUE ;
 int VIF_WANT_MARKS ;
 TYPE_1__* curbuf ;
 scalar_t__ get_viminfo_parameter (char) ;
 int read_viminfo (int *,int ) ;

__attribute__((used)) static void
check_marks_read()
{
    if (!curbuf->b_marks_read && get_viminfo_parameter('\'') > 0
        && curbuf->b_ffname != ((void*)0))
 read_viminfo(((void*)0), VIF_WANT_MARKS);



    curbuf->b_marks_read = TRUE;
}
