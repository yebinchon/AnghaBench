
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 int AT_CURSOR ;
 int AYN ;
 int AYN_ ;
 int BE ;
 int CHE ;
 int FE ;
 int F_HE ;
 int F_is_TyB_TyC_TyD (int ,int ) ;
 int GAF ;
 int GHAF ;
 int GHAYN ;
 int GHAYN_ ;
 int HE_J ;
 int IE ;
 int IE_ ;
 int JIM ;
 int KAF ;
 int LAM ;
 int MIM ;
 int NOON ;
 int PE ;
 int SAD ;
 int SE ;
 int SHIN ;
 int SIN ;
 int SRC_EDT ;
 int TE ;
 int XE ;
 int YE ;
 int YEE ;
 int YEE_ ;
 int YE_ ;
 int ZAD ;
 TYPE_2__* curwin ;
 int dec_cursor () ;
 int gchar_cursor () ;
 int inc_cursor () ;
 int p_ri ;
 int put_and_redo (int) ;

__attribute__((used)) static void
chg_c_toX_orX()
{
    int tempc, curc;

    switch ((curc = gchar_cursor()))
    {
 case 154:
  tempc = BE;
  break;
 case 137:
  tempc = PE;
  break;
 case 132:
  tempc = TE;
  break;
 case 135:
  tempc = SE;
  break;
 case 143:
  tempc = JIM;
  break;
 case 153:
  tempc = CHE;
  break;
 case 145:
  tempc = HE_J;
  break;
 case 131:
  tempc = XE;
  break;
 case 133:
  tempc = SIN;
  break;
 case 134:
  tempc = SHIN;
  break;
 case 136:
  tempc = SAD;
  break;
 case 128:
  tempc = ZAD;
  break;
 case 152:
  tempc = FE;
  break;
 case 150:
  tempc = GHAF;
  break;
 case 141:
 case 142:
  tempc = KAF;
  break;
 case 151:
  tempc = GAF;
  break;
 case 156:
  tempc = AYN;
  break;
 case 155:
  tempc = AYN_;
  break;
 case 149:
  tempc = GHAYN;
  break;
 case 148:
  tempc = GHAYN_;
  break;
 case 140:
  tempc = LAM;
  break;
 case 139:
  tempc = MIM;
  break;
 case 138:
  tempc = NOON;
  break;
 case 147:
 case 146:
  tempc = F_HE;
  break;
 case 130:
 case 144:
 case 129:
  if (p_ri)
  {
      inc_cursor();
      if (F_is_TyB_TyC_TyD(SRC_EDT, AT_CURSOR))
       tempc = (curc == 130 ? YE_ :
       (curc == 144 ? IE_ : YEE_));
      else
       tempc = (curc == 130 ? YE :
       (curc == 144 ? IE : YEE));
      dec_cursor();
  }
  else
  {
      if (curwin->w_cursor.col)
      {
   dec_cursor();
   if (F_is_TyB_TyC_TyD(SRC_EDT, AT_CURSOR))
    tempc = (curc == 130 ? YE_ :
    (curc == 144 ? IE_ : YEE_));
   else
    tempc = (curc == 130 ? YE :
    (curc == 144 ? IE : YEE));
   inc_cursor();
      }
      else
       tempc = (curc == 130 ? YE :
       (curc == 144 ? IE : YEE));
  }
  break;
 default:
  tempc = 0;
    }

    if (tempc)
 put_and_redo(tempc);
}
