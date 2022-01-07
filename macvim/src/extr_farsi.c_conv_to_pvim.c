
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
 int F_isalpha (int ) ;
 scalar_t__ F_isterm (int ) ;
 int HLF_S ;
 int MSG_ATTR (int ,int ) ;
 scalar_t__ STRLEN (int *) ;
 scalar_t__ canF_Ljoin (int ) ;
 scalar_t__ canF_Rjoin (int ) ;
 TYPE_2__* curbuf ;
 int do_cmdline_cmd (int *) ;
 int farsi_text_1 ;
 int hl_attr (int ) ;
 int * ml_get (int ) ;
 int redraw_later (int ) ;
 int toF_Rjoin (int ) ;
 int toF_TyA (int ) ;
 int toF_ending (int ) ;
 int toF_leading (int ) ;

void
conv_to_pvim()
{
    char_u *ptr;
    int lnum, llen, i;

    for (lnum = 1; lnum <= curbuf->b_ml.ml_line_count; ++lnum)
    {
 ptr = ml_get((linenr_T)lnum);

 llen = (int)STRLEN(ptr);

 for ( i = 0; i < llen-1; i++)
 {
     if (canF_Ljoin(ptr[i]) && canF_Rjoin(ptr[i+1]))
     {
  ptr[i] = toF_leading(ptr[i]);
  ++i;

  while (canF_Rjoin(ptr[i]) && i < llen)
  {
      ptr[i] = toF_Rjoin(ptr[i]);
      if (F_isterm(ptr[i]) || !F_isalpha(ptr[i]))
   break;
      ++i;
  }
  if (!F_isalpha(ptr[i]) || !canF_Rjoin(ptr[i]))
      ptr[i-1] = toF_ending(ptr[i-1]);
     }
     else
  ptr[i] = toF_TyA(ptr[i]);
 }
    }





    do_cmdline_cmd((char_u *)"%s/\202\231/\232/g");
    do_cmdline_cmd((char_u *)"%s/\201\231/\370\334/g");


    redraw_later(CLEAR);
    MSG_ATTR(farsi_text_1, hl_attr(HLF_S));
}
