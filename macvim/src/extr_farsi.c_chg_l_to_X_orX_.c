
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ colnr_T ;
struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;



 int ALEF_ ;

 int ALEF_U_H_ ;

 int AYN_ ;

 int GHAYN_ ;

 int IE_ ;
 scalar_t__ STRLEN (int ) ;

 int TEE_ ;


 int YEE_ ;
 int YE_ ;

 int _AYN_ ;

 int _GHAYN_ ;

 int _HE_ ;
 TYPE_2__* curwin ;
 int dec_cursor () ;
 int gchar_cursor () ;
 int inc_cursor () ;
 int ml_get_curline () ;
 scalar_t__ p_ri ;
 int put_and_redo (int) ;

__attribute__((used)) static void
chg_l_to_X_orX_ ()
{
    int tempc;

    if (curwin->w_cursor.col != 0 &&
 (curwin->w_cursor.col + 1 == (colnr_T)STRLEN(ml_get_curline())))
 return;

    if (!curwin->w_cursor.col && p_ri)
 return;

    if (p_ri)
 dec_cursor();
    else
 inc_cursor();

    switch (gchar_cursor())
    {
 case 138:
  tempc = ALEF_;
  break;
 case 137:
  tempc = ALEF_U_H_;
  break;
 case 130:
  tempc = _AYN_;
  break;
 case 136:
  tempc = AYN_;
  break;
 case 129:
  tempc = _GHAYN_;
  break;
 case 135:
  tempc = GHAYN_;
  break;
 case 128:
  tempc = _HE_;
  break;
 case 132:
  tempc = YE_;
  break;
 case 134:
  tempc = IE_;
  break;
 case 133:
  tempc = TEE_;
  break;
 case 131:
  tempc = YEE_;
  break;
 default:
  tempc = 0;
    }

    if (tempc)
 put_and_redo(tempc);

    if (p_ri)
 inc_cursor();
    else
 dec_cursor();
}
