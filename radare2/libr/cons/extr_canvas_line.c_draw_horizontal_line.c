
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sy; scalar_t__ h; } ;
typedef TYPE_1__ RConsCanvas ;






 scalar_t__ G (int,int) ;





 char* RUNECODESTR_CORNER_BL ;
 char* RUNECODESTR_CORNER_BR ;
 char* RUNECODESTR_CORNER_TL ;
 char* RUNECODESTR_CORNER_TR ;
 char* RUNECODESTR_CURVE_CORNER_BL ;
 char* RUNECODESTR_CURVE_CORNER_BR ;
 char* RUNECODESTR_CURVE_CORNER_TL ;
 char* RUNECODESTR_CURVE_CORNER_TR ;
 int W (char const*) ;
 int r_cons_break_pop () ;
 int r_cons_break_push (int *,int *) ;
 scalar_t__ r_cons_is_breaked () ;
 scalar_t__ useUtf8 ;
 int useUtf8Curvy ;
 char* utf8_line_horiz (int) ;

__attribute__((used)) static void draw_horizontal_line (RConsCanvas *c, int x, int y, int width, int style, int dot_style) {
 const char *l_corner = "?", *r_corner = "?";
 int i;

 if (width < 1) {
  return;
 }

 if (y + c->sy < 0) {
  return;
 }
 if (y + c->sy > c->h) {
  return;
 }

 switch (style) {
 case 136:
  if (useUtf8) {
   if (useUtf8Curvy) {
    l_corner = RUNECODESTR_CURVE_CORNER_BL;
    r_corner = RUNECODESTR_CURVE_CORNER_TR;
   } else {
    l_corner = RUNECODESTR_CORNER_BL;
    r_corner = RUNECODESTR_CORNER_TR;
   }
  } else {
   l_corner = "'";
   r_corner = ".";
  }
  break;
 case 135:
  if (useUtf8) {
   if (useUtf8Curvy) {
    l_corner = RUNECODESTR_CURVE_CORNER_TL;
    r_corner = RUNECODESTR_CURVE_CORNER_BR;
   } else {
    l_corner = RUNECODESTR_CORNER_TL;
    r_corner = RUNECODESTR_CORNER_BR;
   }
  } else {
   l_corner = ".";
   r_corner = "'";
  }
  break;
 case 129:
  if (useUtf8) {
   if (useUtf8Curvy) {
    l_corner = RUNECODESTR_CURVE_CORNER_BL;
    r_corner = RUNECODESTR_CURVE_CORNER_BR;
   } else {
    l_corner = RUNECODESTR_CORNER_BL;
    r_corner = RUNECODESTR_CORNER_BR;
   }
  } else {
   l_corner = "`";
   r_corner = "'";
  }
  break;
 case 134:
  if (useUtf8) {
   if (useUtf8Curvy) {
    l_corner = RUNECODESTR_CURVE_CORNER_TL;
    r_corner = RUNECODESTR_CURVE_CORNER_TR;
   } else {
    l_corner = RUNECODESTR_CORNER_TL;
    r_corner = RUNECODESTR_CORNER_TR;
   }
  } else {
   l_corner = r_corner = ".";
  }
  break;
 case 131:
  if (useUtf8) {
   l_corner = utf8_line_horiz (dot_style);
   if (useUtf8Curvy) {
    r_corner = RUNECODESTR_CURVE_CORNER_TR;
   } else {
    r_corner = RUNECODESTR_CORNER_TR;
   }
  } else {
   l_corner = "-";
   r_corner = ".";
  }
  break;
 case 132:
  if (useUtf8) {
   l_corner = utf8_line_horiz (dot_style);
   if (useUtf8Curvy) {
    r_corner = RUNECODESTR_CURVE_CORNER_BR;
   } else {
    r_corner = RUNECODESTR_CORNER_BR;
   }
  } else {
   l_corner = "-";
   r_corner = "'";
  }
  break;
 case 133:
  if (useUtf8) {
   if (useUtf8Curvy) {
    l_corner = RUNECODESTR_CURVE_CORNER_TL;
   } else {
    l_corner = RUNECODESTR_CORNER_TL;
   }
   r_corner = utf8_line_horiz (dot_style);
  } else {
   l_corner = ".";
   r_corner = "-";
  }
  break;
 case 128:
  if (useUtf8) {
   if (useUtf8Curvy) {
    l_corner = RUNECODESTR_CURVE_CORNER_BL;
   } else {
    l_corner = RUNECODESTR_CORNER_BL;
   }
   r_corner = utf8_line_horiz (dot_style);
  } else {
   l_corner = "`";
   r_corner = "-";
  }
  break;
 case 130:
 default:
  if (useUtf8) {
   l_corner = r_corner = utf8_line_horiz (dot_style);
  } else {
   l_corner = r_corner = "-";
  }
  break;
 }

 if (G (x, y)) {
  W (l_corner);
 }

 const char *hline = useUtf8 ? utf8_line_horiz (dot_style) : "-";
 r_cons_break_push (((void*)0), ((void*)0));
 for (i = x + 1; i < x + width - 1; i++) {
  if (r_cons_is_breaked ()) {
   break;
  }
  if (G (i, y)) {
   W (hline);
  }
 }
 r_cons_break_pop ();

 if (G (x + width - 1, y)) {
  W (r_corner);
 }
}
