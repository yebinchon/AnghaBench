#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_10__ {int x_pos; int cnt; int* tile_ptr; } ;
typedef  TYPE_3__ u8x8_tile_t ;
struct TYPE_11__ {int x_offset; } ;
typedef  TYPE_4__ u8x8_t ;
struct TYPE_9__ {int (* template_display_cb ) (TYPE_4__*,int,int,void*) ;int fb_update_ongoing; int /*<<< orphan*/  rfb_cb_ref; } ;
struct TYPE_12__ {TYPE_2__ overlay; } ;
typedef  TYPE_5__ u8g2_nodemcu_t ;
struct fbrle_line {size_t num_valid; TYPE_1__* items; } ;
struct fbrle_item {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_8__ {int start_x; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  U8X8_MSG_DISPLAY_DRAW_TILE 134 
#define  U8X8_MSG_DISPLAY_INIT 133 
#define  U8X8_MSG_DISPLAY_REFRESH 132 
#define  U8X8_MSG_DISPLAY_SETUP_MEMORY 131 
#define  U8X8_MSG_DISPLAY_SET_CONTRAST 130 
#define  U8X8_MSG_DISPLAY_SET_FLIP_MODE 129 
#define  U8X8_MSG_DISPLAY_SET_POWER_SAVE 128 
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fbrle_line*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (size_t) ; 
 int FUNC8 (TYPE_4__*,int,int,void*) ; 

__attribute__((used)) static uint8_t FUNC9(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
  u8g2_nodemcu_t *ext_u8g2 = (u8g2_nodemcu_t *)u8x8;

  switch(msg)
  {
  case U8X8_MSG_DISPLAY_SETUP_MEMORY:
    // forward to template display driver
    return ext_u8g2->overlay.template_display_cb(u8x8, msg, arg_int, arg_ptr);

  case U8X8_MSG_DISPLAY_INIT:
    //u8x8_d_helper_display_init(u8x8);
    ext_u8g2->overlay.fb_update_ongoing = 0;
    break;

  case U8X8_MSG_DISPLAY_SET_POWER_SAVE:
  case U8X8_MSG_DISPLAY_SET_FLIP_MODE:
    break;

#ifdef U8X8_WITH_SET_CONTRAST
  case U8X8_MSG_DISPLAY_SET_CONTRAST:
    break;
#endif

  case U8X8_MSG_DISPLAY_REFRESH:
    ext_u8g2->overlay.fb_update_ongoing = 0;
    break;

  case U8X8_MSG_DISPLAY_DRAW_TILE:
    if (ext_u8g2->overlay.fb_update_ongoing == 0) {
      // tell rfb callback that a new framebuffer starts
      if (ext_u8g2->overlay.rfb_cb_ref != LUA_NOREF) {
        // fire callback with nil argument
        lua_State *L = FUNC3();
        FUNC6( L, LUA_REGISTRYINDEX, ext_u8g2->overlay.rfb_cb_ref );
        FUNC5( L );
        FUNC2( L, 1, 0 );
      }
      // and note ongoing framebuffer update
      ext_u8g2->overlay.fb_update_ongoing = 1;
    }

    {
      // TODO: transport tile_y, needs structural change!
      uint8_t tile_x = ((u8x8_tile_t *)arg_ptr)->x_pos;
      tile_x *= 8;
      tile_x += u8x8->x_offset;
      uint8_t tile_w = ((u8x8_tile_t *)arg_ptr)->cnt * 8;

      size_t fbrle_line_size = sizeof( struct fbrle_line ) + sizeof( struct fbrle_item ) * (tile_w/2);
      int num_lines = 8; /*arg_val / (xwidth/8);*/
      uint8_t *buf = ((u8x8_tile_t *)arg_ptr)->tile_ptr;

      struct fbrle_line *fbrle_line;
      if (!(fbrle_line = (struct fbrle_line *)FUNC7( fbrle_line_size ))) {
        break;
      }

      for (int line = 0; line < num_lines; line++) {
        int start_run = -1;
        fbrle_line->num_valid = 0;

        for (int x = tile_x; x < tile_x+tile_w; x++) {
          if (FUNC0( buf, line, x ) == 0) {
            if (start_run >= 0) {
              // inside run, end it and enter result
              fbrle_line->items[fbrle_line->num_valid].start_x = start_run;
              fbrle_line->items[fbrle_line->num_valid++].len = x - start_run;
              //NODE_ERR( "         line: %d x: %d len: %d\n", line, start_run, x - start_run );
              start_run = -1;
            }
          } else {
            if (start_run < 0) {
              // outside run, start it
              start_run = x;
            }
          }

          if (fbrle_line->num_valid >= tile_w/2) break;
        }

        // active run?
        if (start_run >= 0 && fbrle_line->num_valid < tile_w/2) {
          fbrle_line->items[fbrle_line->num_valid].start_x = start_run;
          fbrle_line->items[fbrle_line->num_valid++].len = tile_w - start_run;
        }

        // line done, trigger callback
        if (ext_u8g2->overlay.rfb_cb_ref != LUA_NOREF) {
          lua_State *L = FUNC3();

          FUNC6( L, LUA_REGISTRYINDEX, ext_u8g2->overlay.rfb_cb_ref );
          FUNC4( L, (const char *)fbrle_line, fbrle_line_size );
          FUNC2( L, 1, 0 );
        }
      }

      FUNC1( fbrle_line );
    }
    break;

  default:
    return 0;
    break;
  }

  return 1;
}