
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nk_context {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef int NkAllegro5Font ;
typedef int ALLEGRO_TIMEOUT ;
typedef int ALLEGRO_EVENT_QUEUE ;
typedef TYPE_1__ ALLEGRO_EVENT ;
typedef int ALLEGRO_DISPLAY ;


 scalar_t__ ALLEGRO_EVENT_DISPLAY_CLOSE ;
 int ALLEGRO_OPENGL ;
 int ALLEGRO_RESIZABLE ;
 int ALLEGRO_SAMPLES ;
 int ALLEGRO_SAMPLE_BUFFERS ;
 int ALLEGRO_SUGGEST ;
 int ALLEGRO_WINDOWED ;
 int NK_WINDOW_BORDER ;
 int NK_WINDOW_CLOSABLE ;
 int NK_WINDOW_MINIMIZABLE ;
 int NK_WINDOW_MOVABLE ;
 int NK_WINDOW_SCALABLE ;
 int NK_WINDOW_TITLE ;
 int WINDOW_HEIGHT ;
 int WINDOW_WIDTH ;
 int al_clear_to_color (int ) ;
 int * al_create_display (int ,int ) ;
 int * al_create_event_queue () ;
 int al_destroy_display (int *) ;
 int al_destroy_event_queue (int *) ;
 int al_flip_display () ;
 int al_get_display_event_source (int *) ;
 int al_get_keyboard_event_source () ;
 int al_get_mouse_event_source () ;
 int al_get_next_event (int *,TYPE_1__*) ;
 int al_init () ;
 int al_init_timeout (int *,double) ;
 int al_install_keyboard () ;
 int al_install_mouse () ;
 int al_map_rgb (int,int,int) ;
 int al_register_event_source (int *,int ) ;
 int al_set_mouse_wheel_precision (int) ;
 int al_set_new_display_flags (int) ;
 int al_set_new_display_option (int ,int,int ) ;
 int al_wait_for_event_until (int *,TYPE_1__*,int *) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int * nk_allegro5_font_create_from_file (char*,int,int ) ;
 int nk_allegro5_font_del (int *) ;
 int nk_allegro5_handle_event (TYPE_1__*) ;
 struct nk_context* nk_allegro5_init (int *,int *,int ,int ) ;
 int nk_allegro5_render () ;
 int nk_allegro5_shutdown () ;
 scalar_t__ nk_begin (struct nk_context*,char*,int ,int) ;
 scalar_t__ nk_button_label (struct nk_context*,char*) ;
 int nk_end (struct nk_context*) ;
 int nk_input_begin (struct nk_context*) ;
 int nk_input_end (struct nk_context*) ;
 int nk_layout_row_dynamic (struct nk_context*,int,int) ;
 int nk_layout_row_static (struct nk_context*,int,int,int) ;
 scalar_t__ nk_option_label (struct nk_context*,char*,int) ;
 int nk_property_int (struct nk_context*,char*,int ,int*,int,int,int) ;
 int nk_rect (int,int,int,int) ;
 int overview (struct nk_context*) ;
 int stdout ;

int main(void)
{

    ALLEGRO_DISPLAY *display = ((void*)0);
    ALLEGRO_EVENT_QUEUE *event_queue = ((void*)0);

    if (!al_init()) {
        fprintf(stdout, "failed to initialize allegro5!\n");
        exit(1);
    }

    al_install_mouse();
    al_set_mouse_wheel_precision(150);
    al_install_keyboard();

    al_set_new_display_flags(ALLEGRO_WINDOWED|ALLEGRO_RESIZABLE|ALLEGRO_OPENGL);
    al_set_new_display_option(ALLEGRO_SAMPLE_BUFFERS, 1, ALLEGRO_SUGGEST);
    al_set_new_display_option(ALLEGRO_SAMPLES, 8, ALLEGRO_SUGGEST);
    display = al_create_display(WINDOW_WIDTH, WINDOW_HEIGHT);
    if (!display) {
        fprintf(stdout, "failed to create display!\n");
        exit(1);
    }

    event_queue = al_create_event_queue();
    if (!event_queue) {
        fprintf(stdout, "failed to create event_queue!\n");
        al_destroy_display(display);
        exit(1);
    }

    al_register_event_source(event_queue, al_get_display_event_source(display));
    al_register_event_source(event_queue, al_get_mouse_event_source());
    al_register_event_source(event_queue, al_get_keyboard_event_source());

    NkAllegro5Font *font;
    font = nk_allegro5_font_create_from_file("../../../extra_font/Roboto-Regular.ttf", 12, 0);
    struct nk_context *ctx;

    ctx = nk_allegro5_init(font, display, WINDOW_WIDTH, WINDOW_HEIGHT);







    while(1)
    {
        ALLEGRO_EVENT ev;
        ALLEGRO_TIMEOUT timeout;
        al_init_timeout(&timeout, 0.06);

        bool get_event = al_wait_for_event_until(event_queue, &ev, &timeout);

        if (get_event && ev.type == ALLEGRO_EVENT_DISPLAY_CLOSE) {
            break;
        }



        nk_input_begin(ctx);
        if (get_event) {
            while (get_event) {
                nk_allegro5_handle_event(&ev);
                get_event = al_get_next_event(event_queue, &ev);
            }
        }
        nk_input_end(ctx);


        if (nk_begin(ctx, "Demo", nk_rect(50, 50, 200, 200),
            NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_SCALABLE|
            NK_WINDOW_CLOSABLE|NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE))
        {
            enum {EASY, HARD};
            static int op = EASY;
            static int property = 20;

            nk_layout_row_static(ctx, 30, 80, 1);
            if (nk_button_label(ctx, "button"))
                fprintf(stdout, "button pressed\n");
            nk_layout_row_dynamic(ctx, 30, 2);
            if (nk_option_label(ctx, "easy", op == EASY)) op = EASY;
            if (nk_option_label(ctx, "hard", op == HARD)) op = HARD;
            nk_layout_row_dynamic(ctx, 22, 1);
            nk_property_int(ctx, "Compression:", 0, &property, 100, 10, 1);
        }
        nk_end(ctx);



        overview(ctx);




        al_clear_to_color(al_map_rgb(19, 43, 81));



        nk_allegro5_render();
        al_flip_display();
    }

    nk_allegro5_font_del(font);
    nk_allegro5_shutdown();
    al_destroy_display(display);
    al_destroy_event_queue(event_queue);
    return 0;
}
