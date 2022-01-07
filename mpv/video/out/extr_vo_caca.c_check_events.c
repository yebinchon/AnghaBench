
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vo {int input_ctx; struct priv* priv; } ;
struct priv {int dither_color; int dither; int dither_charset; int dither_antialias; int dither_algo; int display; } ;
struct TYPE_7__ {int ch; } ;
struct TYPE_6__ {scalar_t__ button; int y; int x; } ;
struct TYPE_8__ {TYPE_2__ key; TYPE_1__ mouse; } ;
struct TYPE_9__ {int type; TYPE_3__ data; } ;
typedef TYPE_4__ caca_event_t ;


 int CACA_EVENT_ANY ;






 int MP_KEY_CLOSE_WIN ;
 int MP_KEY_STATE_DOWN ;
 int MP_KEY_STATE_UP ;
 scalar_t__ MP_MBTN_BASE ;
 int caca_get_dither_algorithm_list (int ) ;
 int caca_get_dither_antialias_list (int ) ;
 int caca_get_dither_charset_list (int ) ;
 int caca_get_dither_color_list (int ) ;
 scalar_t__ caca_get_event (int ,int ,TYPE_4__*,int ) ;
 int caca_refresh_display (int ) ;
 int caca_set_dither_algorithm (int ,int ) ;
 int caca_set_dither_antialias (int ,int ) ;
 int caca_set_dither_charset (int ,int ) ;
 int caca_set_dither_color (int ,int ) ;
 int keysym_map ;
 int lookup_keymap_table (int ,int) ;
 int mp_input_put_key (int ,int) ;
 int mp_input_set_mouse_pos (int ,int ,int ) ;
 int resize (struct vo*) ;
 int set_next_str (int ,int *,char const**) ;

__attribute__((used)) static void check_events(struct vo *vo)
{
    struct priv *priv = vo->priv;

    caca_event_t cev;
    while (caca_get_event(priv->display, CACA_EVENT_ANY, &cev, 0)) {

        switch (cev.type) {
        case 128:
            caca_refresh_display(priv->display);
            resize(vo);
            break;
        case 129:
            mp_input_put_key(vo->input_ctx, MP_KEY_CLOSE_WIN);
            break;
        case 132:
            mp_input_set_mouse_pos(vo->input_ctx, cev.data.mouse.x, cev.data.mouse.y);
            break;
        case 131:
            mp_input_put_key(vo->input_ctx,
                    (MP_MBTN_BASE + cev.data.mouse.button - 1) | MP_KEY_STATE_DOWN);
            break;
        case 130:
            mp_input_put_key(vo->input_ctx,
                    (MP_MBTN_BASE + cev.data.mouse.button - 1) | MP_KEY_STATE_UP);
            break;
        case 133:
        {
            int key = cev.data.key.ch;
            int mpkey = lookup_keymap_table(keysym_map, key);
            const char *msg_name;

            if (mpkey)
                mp_input_put_key(vo->input_ctx, mpkey);
            else
            switch (key) {
            case 'd':
            case 'D':

                set_next_str(caca_get_dither_algorithm_list(priv->dither),
                             &priv->dither_algo, &msg_name);
                caca_set_dither_algorithm(priv->dither, priv->dither_algo);
                break;

            case 'a':
            case 'A':

                set_next_str(caca_get_dither_antialias_list(priv->dither),
                             &priv->dither_antialias, &msg_name);
                caca_set_dither_antialias(priv->dither, priv->dither_antialias);
                break;

            case 'h':
            case 'H':

                set_next_str(caca_get_dither_charset_list(priv->dither),
                             &priv->dither_charset, &msg_name);
                caca_set_dither_charset(priv->dither, priv->dither_charset);
                break;

            case 'c':
            case 'C':

                set_next_str(caca_get_dither_color_list(priv->dither),
                             &priv->dither_color, &msg_name);
                caca_set_dither_color(priv->dither, priv->dither_color);
                break;

            default:
                if (key <= 255)
                    mp_input_put_key(vo->input_ctx, key);
                break;
            }
        }
        }
    }
}
