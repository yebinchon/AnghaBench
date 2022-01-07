
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * w_buffer; } ;
typedef TYPE_1__ win_T ;
typedef int buf_T ;


 TYPE_1__* W_NEXT (TYPE_1__*) ;
 TYPE_1__* firstwin ;

__attribute__((used)) static win_T *
get_window(
 buf_T *buf)
{
    win_T *wp = ((void*)0);

    for (wp = firstwin; wp != ((void*)0); wp = W_NEXT(wp))
 if (buf == wp->w_buffer)
     break;
    return wp;
}
