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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {TYPE_1__* bufs; int /*<<< orphan*/  self_ref; int /*<<< orphan*/  cb_vu_ref; int /*<<< orphan*/  cb_stopped_ref; int /*<<< orphan*/  cb_paused_ref; int /*<<< orphan*/  cb_drained_ref; int /*<<< orphan*/  cb_data_ref; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* cfg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( lua_State *L )
{
  FUNC0();

  FUNC1( cfg->cb_data_ref );
  FUNC1( cfg->cb_drained_ref );
  FUNC1( cfg->cb_paused_ref );
  FUNC1( cfg->cb_stopped_ref );
  FUNC1( cfg->cb_vu_ref );
  FUNC1( cfg->self_ref );

  if (cfg->bufs[0].data) {
    FUNC2( cfg->bufs[0].data );
    cfg->bufs[0].data = NULL;
  }
  if (cfg->bufs[1].data) {
    FUNC2( cfg->bufs[1].data );
    cfg->bufs[1].data = NULL;
  }

  return 0;
}