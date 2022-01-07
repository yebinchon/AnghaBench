
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ut8 ;
typedef int ut32 ;
struct TYPE_8__ {int io; int (* is_valid_offset ) (int ,scalar_t__,int) ;} ;
struct TYPE_11__ {int cur_enabled; int flags; int cur; char io_unalloc_ch; TYPE_1__ iob; } ;
struct TYPE_10__ {scalar_t__ offset; int flags; TYPE_4__* print; int config; } ;
struct TYPE_9__ {char* name; } ;
typedef TYPE_2__ RFlagItem ;
typedef TYPE_3__ RCore ;


 char* Color_RESET ;
 int R_PRINT_FLAGS_UNALLOC ;
 int* colormap ;
 int free (char*) ;
 int r_config_get_i (int ,char*) ;
 int r_cons_newline () ;
 char* r_cons_pal_parse (char*,int *) ;
 int r_cons_printf (char*,...) ;
 char* r_core_get_section_name (TYPE_3__*,scalar_t__) ;
 TYPE_2__* r_flag_get_i (int ,scalar_t__) ;
 int r_print_addr (TYPE_4__*,scalar_t__) ;
 char* r_str_newf (char*,char*,int) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 int stub1 (int ,scalar_t__,int) ;

__attribute__((used)) static void cmd_prc(RCore *core, const ut8* block, int len) {
 const char *chars = " .,:;!O@#";
 bool square = r_config_get_i (core->config, "scr.square");
 int i, j;
 char ch, ch2, *color;
 int cols = r_config_get_i (core->config, "hex.cols");
 bool show_color = r_config_get_i (core->config, "scr.color");
 bool show_flags = r_config_get_i (core->config, "asm.flags");
 bool show_section = r_config_get_i (core->config, "hex.section");
 bool show_cursor = core->print->cur_enabled;
 bool show_unalloc = core->print->flags & R_PRINT_FLAGS_UNALLOC;
 if (cols < 1 || cols > 0xfffff) {
  cols = 32;
 }
 for (i = 0; i < len; i += cols) {
  if (show_section) {
   const char * name = r_core_get_section_name (core, core->offset + i);
   r_cons_printf ("%20s ", name? name: "");
  }
  r_print_addr (core->print, core->offset + i);
  for (j = i; j < i + cols; j ++) {
   if (j >= len) {
    break;
   }
   if (show_color) {
    ut32 color_val = colormap[block[j]];
    int brightness = ((color_val & 0xff0000) >> 16)
                    + 2 * ((color_val & 0xff00) >> 8) + (color_val & 0xff) / 2;
    char *str = r_str_newf ("rgb:%s rgb:%06x",
     brightness <= 0x7f * 3 ? "fff" : "000", color_val);
    color = r_cons_pal_parse (str, ((void*)0));
    free (str);
    if (show_cursor && core->print->cur == j) {
     ch = '_';
    } else {
     ch = ' ';
    }
   } else {
    color = strdup ("");
    if (show_cursor && core->print->cur == j) {
     ch = '_';
    } else {
     const int idx = ((float)block[j] / 255) * (strlen (chars) - 1);
     ch = chars[idx];
    }
   }
   if (show_unalloc &&
       !core->print->iob.is_valid_offset (core->print->iob.io, core->offset + j, 0)) {
    if (show_color) {
     free (color);
     color = strdup (Color_RESET);
     ch = core->print->io_unalloc_ch;
     if (ch == ' ') {
      ch = '.';
     }
    } else {
     ch = '?';
    }
   }
   if (square) {
    if (show_flags) {
     RFlagItem *fi = r_flag_get_i (core->flags, core->offset + j);
     if (fi) {
      ch = fi->name[0];
      ch2 = fi->name[1];
     } else {
      ch2 = ch;
     }
    } else {
     ch2 = ch;
    }
    r_cons_printf ("%s%c%c", color, ch, ch2);
   } else {
    r_cons_printf ("%s%c", color, ch);
   }
   free (color);
  }
  if (show_color) {
   r_cons_printf (Color_RESET);
  }
  r_cons_newline ();
 }
}
