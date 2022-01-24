#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct tsm_vte {int dummy; } ;
struct tsm_screen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEIGHT ; 
 int /*<<< orphan*/  WIDTH ; 
 int /*<<< orphan*/  term_draw_cell ; 
 int /*<<< orphan*/  terminal_write_fn ; 
 int /*<<< orphan*/  FUNC0 (struct tsm_screen*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tsm_screen**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tsm_screen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tsm_screen*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct tsm_screen*) ; 
 int /*<<< orphan*/  FUNC5 (struct tsm_vte*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct tsm_vte**,struct tsm_screen*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tsm_vte*) ; 

int FUNC8(const uint8_t* data, size_t size) {
  struct tsm_screen *screen;
  struct tsm_vte *vte;
  const int scrollback_size = 200;  // frecon use 200

  FUNC1(&screen, NULL, NULL);
  FUNC3(screen, scrollback_size);
  FUNC6(&vte, screen, terminal_write_fn, NULL, NULL, NULL);
  FUNC2(screen, WIDTH, HEIGHT);

  FUNC5(vte, (const char*) data, size);
  FUNC0(screen, term_draw_cell, NULL);

  FUNC7(vte);
  FUNC4(screen);
  return 0;
}