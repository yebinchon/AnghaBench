
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int guint ;
typedef scalar_t__ guicolor_T ;
typedef int char_u ;
struct TYPE_2__ {int char_width; int char_height; int toolbar_h; int menubar_h; int mainwin; int drawarea; int formwin; scalar_t__ def_back_pixel; scalar_t__ def_norm_pixel; int * geom; } ;


 int Columns ;
 int GO_MENUS ;
 int GO_TOOLBAR ;
 int GTK_OBJECT (int ) ;
 int GTK_SIGNAL_FUNC (int ) ;
 int GTK_WINDOW (int ) ;
 int G_CALLBACK (int *) ;
 int HeightValue ;
 scalar_t__ INVALCOLOR ;
 int OK ;
 int Rows ;
 int TOOLBAR_ICONS ;
 int TOOLBAR_TEXT ;
 int WidthValue ;
 int XNegative ;
 int XParseGeometry (char*,int*,int*,unsigned int*,unsigned int*) ;
 int XValue ;
 int YNegative ;
 int YValue ;
 int * background_argument ;
 int check_startup_plug_hints ;
 int drag_data_received_cb ;
 int * foreground_argument ;
 int form_configure_event ;
 scalar_t__ found_iconic_arg ;
 scalar_t__ found_reverse_arg ;
 int g_free (char*) ;
 scalar_t__ g_random_int () ;
 unsigned long g_signal_connect_after (int ,char*,int ,int *) ;
 int g_signal_handler_disconnect (int ,unsigned long) ;
 char* g_strdup_printf (char*,unsigned int,unsigned int,unsigned int) ;
 int g_timeout_add (int,int ,int *) ;
 int get_menu_tool_height () ;
 int get_menu_tool_width () ;
 int gtk_signal_connect (int ,char*,int ,int *) ;
 scalar_t__ gtk_socket_id ;
 int gtk_widget_hide ;
 int gtk_widget_show (int ) ;
 int gtk_window_move (int ,int,int) ;
 int gtk_window_resize (int ,int,int) ;
 int gtk_window_set_role (int ,char*) ;
 TYPE_1__ gui ;
 int gui_check_colors () ;
 scalar_t__ gui_get_base_height () ;
 scalar_t__ gui_get_base_width () ;
 scalar_t__ gui_get_color (int *) ;
 int gui_gtk_set_dnd_targets () ;
 int gui_mch_get_screen_dimensions (int*,int*) ;
 int gui_mch_iconify () ;
 int gui_win_x ;
 int gui_win_y ;
 int hangul_keyboard_set () ;
 int highlight_gui_started () ;
 int init_window_hints_state ;
 int limit_screen_size () ;
 int mainwin_destroy_cb ;
 scalar_t__ mch_get_pid () ;
 int option_was_set (int *) ;
 int p_ghr ;
 int p_go ;
 long p_window ;
 char* role_argument ;
 int set_normal_colors () ;
 scalar_t__ time (int *) ;
 int toolbar_flags ;
 int update_window_manager_hints (int,int) ;
 scalar_t__ using_gnome ;
 int vim_free (int *) ;
 int * vim_strchr (int ,int ) ;

int
gui_mch_open(void)
{
    guicolor_T fg_pixel = INVALCOLOR;
    guicolor_T bg_pixel = INVALCOLOR;
    guint pixel_width;
    guint pixel_height;






    if (role_argument != ((void*)0))
    {
 gtk_window_set_role(GTK_WINDOW(gui.mainwin), role_argument);
    }
    else
    {
 char *role;


 role = g_strdup_printf("vim-%u-%u-%u",
          (unsigned)mch_get_pid(),
          (unsigned)g_random_int(),
          (unsigned)time(((void*)0)));

 gtk_window_set_role(GTK_WINDOW(gui.mainwin), role);
 g_free(role);
    }

    if (gui_win_x != -1 && gui_win_y != -1)
 gtk_window_move(GTK_WINDOW(gui.mainwin), gui_win_x, gui_win_y);


    if (gui.geom != ((void*)0))
    {
 int mask;
 unsigned int w, h;
 int x = 0;
 int y = 0;

 mask = XParseGeometry((char *)gui.geom, &x, &y, &w, &h);

 if (mask & WidthValue)
     Columns = w;
 if (mask & HeightValue)
 {
     if (p_window > (long)h - 1 || !option_was_set((char_u *)"window"))
  p_window = h - 1;
     Rows = h;
 }
 limit_screen_size();

 pixel_width = (guint)(gui_get_base_width() + Columns * gui.char_width);
 pixel_height = (guint)(gui_get_base_height() + Rows * gui.char_height);

 pixel_width += get_menu_tool_width();
 pixel_height += get_menu_tool_height();

 if (mask & (XValue | YValue))
 {
     int ww, hh;
     gui_mch_get_screen_dimensions(&ww, &hh);
     hh += p_ghr + get_menu_tool_height();
     ww += get_menu_tool_width();
     if (mask & XNegative)
  x += ww - pixel_width;
     if (mask & YNegative)
  y += hh - pixel_height;
     gtk_window_move(GTK_WINDOW(gui.mainwin), x, y);
 }
 vim_free(gui.geom);
 gui.geom = ((void*)0);






 if (gtk_socket_id != 0 && (mask & WidthValue || mask & HeightValue))
 {
     update_window_manager_hints(pixel_width, pixel_height);
     init_window_hints_state = 1;
     g_timeout_add(1000, check_startup_plug_hints, ((void*)0));
 }
    }

    pixel_width = (guint)(gui_get_base_width() + Columns * gui.char_width);
    pixel_height = (guint)(gui_get_base_height() + Rows * gui.char_height);


    if (gtk_socket_id == 0)
 gtk_window_resize(GTK_WINDOW(gui.mainwin), pixel_width, pixel_height);
    update_window_manager_hints(0, 0);

    if (foreground_argument != ((void*)0))
 fg_pixel = gui_get_color((char_u *)foreground_argument);
    if (fg_pixel == INVALCOLOR)
 fg_pixel = gui_get_color((char_u *)"Black");

    if (background_argument != ((void*)0))
 bg_pixel = gui_get_color((char_u *)background_argument);
    if (bg_pixel == INVALCOLOR)
 bg_pixel = gui_get_color((char_u *)"White");

    if (found_reverse_arg)
    {
 gui.def_norm_pixel = bg_pixel;
 gui.def_back_pixel = fg_pixel;
    }
    else
    {
 gui.def_norm_pixel = fg_pixel;
 gui.def_back_pixel = bg_pixel;
    }



    set_normal_colors();


    gui_check_colors();



    highlight_gui_started();

    gtk_signal_connect(GTK_OBJECT(gui.mainwin), "destroy",
         GTK_SIGNAL_FUNC(mainwin_destroy_cb), ((void*)0));
    gtk_signal_connect(GTK_OBJECT(gui.formwin), "configure_event",
         GTK_SIGNAL_FUNC(form_configure_event), ((void*)0));
 if (found_iconic_arg && gtk_socket_id == 0)
     gui_mch_iconify();

    {
 gtk_widget_show(gui.mainwin);
    }

    return OK;
}
