#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ task_param_t ;
struct TYPE_3__ {size_t buf_size; size_t* data; size_t len; void* empty; scalar_t__ rpos; } ;
typedef  TYPE_1__ pcm_buf_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {size_t fbuf_idx; int isr_throttled; scalar_t__ cb_data_ref; scalar_t__ cb_drained_ref; int /*<<< orphan*/  self_ref; TYPE_1__* bufs; } ;
typedef  TYPE_2__ cfg_t ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ LUA_NOREF ; 
 scalar_t__ LUA_TSTRING ; 
 int /*<<< orphan*/  PLATFORM_GPIO_HIGH ; 
 int /*<<< orphan*/  PLATFORM_GPIO_LOW ; 
 size_t TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (size_t*,char const*,size_t) ; 

void FUNC9( task_param_t param, uint8 prio )
{
  cfg_t *cfg = (cfg_t *)param;
  pcm_buf_t *buf = &(cfg->bufs[cfg->fbuf_idx]);
  size_t string_len;
  const char *data = NULL;
  uint8_t need_pop = FALSE;
  lua_State *L = FUNC3();

  // retrieve new data from callback
  if ((cfg->isr_throttled >= 0) &&
      (cfg->cb_data_ref != LUA_NOREF)) {
    FUNC1( L, cfg->self_ref, cfg->cb_data_ref, 1 );
    need_pop = TRUE;

    if (FUNC6( L, -1 ) == LUA_TSTRING) {
      data = FUNC5( L, -1, &string_len );
      if (string_len > buf->buf_size) {
        uint8_t *new_data = (uint8_t *) FUNC7( string_len );
        if (new_data) {
          if (buf->data) FUNC2( buf->data );
          buf->buf_size = string_len;
          buf->data = new_data;
        }
      }
    }
  }

  if (data) {
    size_t to_copy = string_len > buf->buf_size ? buf->buf_size : string_len;
    FUNC8( buf->data, data, to_copy );

    buf->rpos  = 0;
    buf->len   = to_copy;
    buf->empty = FALSE;
    FUNC0( PLATFORM_GPIO_HIGH );
    FUNC4( L, 1 );

    if (cfg->isr_throttled > 0) {
      uint8_t other_buf = cfg->fbuf_idx ^ 1;

      if (cfg->bufs[other_buf].empty) {
        // rerun data callback to get next buffer chunk
        FUNC0( PLATFORM_GPIO_LOW );
        cfg->fbuf_idx = other_buf;
        FUNC9( param, 0 );
      }
      // unthrottle ISR
      cfg->isr_throttled = 0;
    }
  } else {
    FUNC0( PLATFORM_GPIO_HIGH );
    if (need_pop) FUNC4( L, 1 );

    if (cfg->isr_throttled > 0) {
      // ISR found no further data
      // this was the last invocation of the reader task, fire drained cb

      cfg->isr_throttled = -1;

      FUNC1( L, cfg->self_ref, cfg->cb_drained_ref, 0 );
    }
  }

}