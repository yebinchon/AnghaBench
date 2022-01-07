
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int x_pos; int cnt; int* tile_ptr; } ;
typedef TYPE_3__ u8x8_tile_t ;
struct TYPE_11__ {int x_offset; } ;
typedef TYPE_4__ u8x8_t ;
struct TYPE_9__ {int (* template_display_cb ) (TYPE_4__*,int,int,void*) ;int fb_update_ongoing; int rfb_cb_ref; } ;
struct TYPE_12__ {TYPE_2__ overlay; } ;
typedef TYPE_5__ u8g2_nodemcu_t ;
struct fbrle_line {size_t num_valid; TYPE_1__* items; } ;
struct fbrle_item {int dummy; } ;
typedef int lua_State ;
struct TYPE_8__ {int start_x; int len; } ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;







 int bit_at (int*,int,int) ;
 int free (struct fbrle_line*) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int ,int ) ;
 scalar_t__ malloc (size_t) ;
 int stub1 (TYPE_4__*,int,int,void*) ;

__attribute__((used)) static uint8_t u8x8_d_fbrle(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
  u8g2_nodemcu_t *ext_u8g2 = (u8g2_nodemcu_t *)u8x8;

  switch(msg)
  {
  case 131:

    return ext_u8g2->overlay.template_display_cb(u8x8, msg, arg_int, arg_ptr);

  case 133:

    ext_u8g2->overlay.fb_update_ongoing = 0;
    break;

  case 128:
  case 129:
    break;






  case 132:
    ext_u8g2->overlay.fb_update_ongoing = 0;
    break;

  case 134:
    if (ext_u8g2->overlay.fb_update_ongoing == 0) {

      if (ext_u8g2->overlay.rfb_cb_ref != LUA_NOREF) {

        lua_State *L = lua_getstate();
        lua_rawgeti( L, LUA_REGISTRYINDEX, ext_u8g2->overlay.rfb_cb_ref );
        lua_pushnil( L );
        lua_call( L, 1, 0 );
      }

      ext_u8g2->overlay.fb_update_ongoing = 1;
    }

    {

      uint8_t tile_x = ((u8x8_tile_t *)arg_ptr)->x_pos;
      tile_x *= 8;
      tile_x += u8x8->x_offset;
      uint8_t tile_w = ((u8x8_tile_t *)arg_ptr)->cnt * 8;

      size_t fbrle_line_size = sizeof( struct fbrle_line ) + sizeof( struct fbrle_item ) * (tile_w/2);
      int num_lines = 8;
      uint8_t *buf = ((u8x8_tile_t *)arg_ptr)->tile_ptr;

      struct fbrle_line *fbrle_line;
      if (!(fbrle_line = (struct fbrle_line *)malloc( fbrle_line_size ))) {
        break;
      }

      for (int line = 0; line < num_lines; line++) {
        int start_run = -1;
        fbrle_line->num_valid = 0;

        for (int x = tile_x; x < tile_x+tile_w; x++) {
          if (bit_at( buf, line, x ) == 0) {
            if (start_run >= 0) {

              fbrle_line->items[fbrle_line->num_valid].start_x = start_run;
              fbrle_line->items[fbrle_line->num_valid++].len = x - start_run;

              start_run = -1;
            }
          } else {
            if (start_run < 0) {

              start_run = x;
            }
          }

          if (fbrle_line->num_valid >= tile_w/2) break;
        }


        if (start_run >= 0 && fbrle_line->num_valid < tile_w/2) {
          fbrle_line->items[fbrle_line->num_valid].start_x = start_run;
          fbrle_line->items[fbrle_line->num_valid++].len = tile_w - start_run;
        }


        if (ext_u8g2->overlay.rfb_cb_ref != LUA_NOREF) {
          lua_State *L = lua_getstate();

          lua_rawgeti( L, LUA_REGISTRYINDEX, ext_u8g2->overlay.rfb_cb_ref );
          lua_pushlstring( L, (const char *)fbrle_line, fbrle_line_size );
          lua_call( L, 1, 0 );
        }
      }

      free( fbrle_line );
    }
    break;

  default:
    return 0;
    break;
  }

  return 1;
}
