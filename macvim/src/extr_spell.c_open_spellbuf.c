
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b_p_key; void* b_p_swf; void* b_spell; } ;
typedef TYPE_1__ buf_T ;


 void* TRUE ;
 scalar_t__ alloc_clear (int) ;
 int empty_option ;
 int ml_open (TYPE_1__*) ;
 int ml_open_file (TYPE_1__*) ;

__attribute__((used)) static buf_T *
open_spellbuf()
{
    buf_T *buf;

    buf = (buf_T *)alloc_clear(sizeof(buf_T));
    if (buf != ((void*)0))
    {
 buf->b_spell = TRUE;
 buf->b_p_swf = TRUE;



 ml_open(buf);
 ml_open_file(buf);
    }
    return buf;
}
