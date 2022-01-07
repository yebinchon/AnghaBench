
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int linenr_T ;
typedef int char_u ;
struct TYPE_3__ {int ml_line_count; } ;
struct TYPE_4__ {TYPE_1__ b_ml; } ;


 int CLEAR ;
 int HLF_S ;
 int MSG_ATTR (int ,int ) ;
 scalar_t__ STRLEN (int *) ;
 TYPE_2__* curbuf ;
 int do_cmdline_cmd (int *) ;
 int farsi_text_2 ;
 int hl_attr (int ) ;
 int * ml_get (int ) ;
 int redraw_later (int ) ;
 int toF_TyA (int ) ;

void
conv_to_pstd()
{
    char_u *ptr;
    int lnum, llen, i;





    do_cmdline_cmd((char_u *)"%s/\232/\202\231/g");

    for (lnum = 1; lnum <= curbuf->b_ml.ml_line_count; ++lnum)
    {
 ptr = ml_get((linenr_T)lnum);

 llen = (int)STRLEN(ptr);

 for ( i = 0; i < llen; i++)
 {
     ptr[i] = toF_TyA(ptr[i]);

 }
    }


    redraw_later(CLEAR);
    MSG_ATTR(farsi_text_2, hl_attr(HLF_S));
}
