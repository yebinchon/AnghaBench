
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ga_len; int ga_data; } ;


 scalar_t__ FALSE ;
 int PRCOLOR_WHITE ;
 int ga_clear (TYPE_1__*) ;
 int ga_init2 (TYPE_1__*,int,int ) ;
 int prt_bufsiz ;
 scalar_t__ prt_do_bgcol ;
 scalar_t__ prt_do_moveto ;
 scalar_t__ prt_do_underline ;
 int prt_line_height ;
 int prt_new_bgcol ;
 scalar_t__ prt_out_mbyte ;
 int prt_pos_x_moveto ;
 int prt_pos_y_moveto ;
 TYPE_1__ prt_ps_buffer ;
 int prt_text_run ;
 int prt_write_file_raw_len (int ,scalar_t__) ;
 int prt_write_real (int,int) ;
 int prt_write_string (char*) ;

__attribute__((used)) static void
prt_flush_buffer()
{
    if (prt_ps_buffer.ga_len > 0)
    {

 if (prt_do_bgcol && (prt_new_bgcol != PRCOLOR_WHITE))
 {
     int r, g, b;

     if (prt_do_moveto)
     {
  prt_write_real(prt_pos_x_moveto, 2);
  prt_write_real(prt_pos_y_moveto, 2);
  prt_write_string("m\n");
  prt_do_moveto = FALSE;
     }


     prt_write_real(prt_text_run, 2);
     prt_write_real(prt_line_height, 2);


     r = ((unsigned)prt_new_bgcol & 0xff0000) >> 16;
     g = ((unsigned)prt_new_bgcol & 0xff00) >> 8;
     b = prt_new_bgcol & 0xff;
     prt_write_real(r / 255.0, 3);
     prt_write_real(g / 255.0, 3);
     prt_write_real(b / 255.0, 3);
     prt_write_string("bg\n");
 }



 if (prt_do_underline)
 {
     if (prt_do_moveto)
     {
  prt_write_real(prt_pos_x_moveto, 2);
  prt_write_real(prt_pos_y_moveto, 2);
  prt_write_string("m\n");
  prt_do_moveto = FALSE;
     }


     prt_write_real(prt_text_run, 2);
     prt_write_string("ul\n");
 }
     prt_write_string("(");
 prt_write_file_raw_len(prt_ps_buffer.ga_data, prt_ps_buffer.ga_len);





     prt_write_string(")");

 if (prt_do_moveto)
 {
     prt_write_real(prt_pos_x_moveto, 2);
     prt_write_real(prt_pos_y_moveto, 2);

     prt_write_string("ms\n");
     prt_do_moveto = FALSE;
 }
 else
     prt_write_string("s\n");

 ga_clear(&prt_ps_buffer);
 ga_init2(&prt_ps_buffer, (int)sizeof(char), prt_bufsiz);
    }
}
