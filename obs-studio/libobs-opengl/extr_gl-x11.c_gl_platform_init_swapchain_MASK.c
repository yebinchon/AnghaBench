#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* xcb_window_t ;
struct TYPE_14__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  root; } ;
typedef  TYPE_6__ xcb_get_geometry_reply_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int xcb_colormap_t ;
typedef  int uint32_t ;
struct TYPE_11__ {void* id; } ;
struct TYPE_12__ {TYPE_3__ window; } ;
struct gs_swap_chain {TYPE_5__* wi; TYPE_4__ info; TYPE_2__* device; } ;
struct TYPE_13__ {void* window; int /*<<< orphan*/  config; } ;
struct TYPE_10__ {TYPE_1__* plat; } ;
struct TYPE_9__ {int /*<<< orphan*/ * display; } ;
typedef  int /*<<< orphan*/  GLXFBConfig ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  GLX_VISUAL_ID ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  XCB_COLORMAP_ALLOC_NONE ; 
 int XCB_CW_BORDER_PIXEL ; 
 int XCB_CW_COLORMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ctx_visual_attribs ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*) ; 

extern bool FUNC12(struct gs_swap_chain *swap)
{
	Display *display = swap->device->plat->display;
	xcb_connection_t *xcb_conn = FUNC1(display);
	xcb_window_t wid = FUNC10(xcb_conn);
	xcb_window_t parent = swap->info.window.id;
	xcb_get_geometry_reply_t *geometry =
		FUNC5(xcb_conn, parent);
	bool status = false;

	int screen_num;
	int visual;
	GLXFBConfig *fb_config;

	if (!geometry)
		goto fail_geometry_request;

	screen_num = FUNC4(xcb_conn, geometry->root);
	if (screen_num == -1) {
		goto fail_screen;
	}

	/* ...fetch the best match... */
	{
		int num_configs;
		fb_config = FUNC6(display, screen_num,
					      ctx_visual_attribs, &num_configs);

		if (!fb_config || !num_configs) {
			FUNC2(LOG_ERROR, "Failed to find FBConfig!");
			goto fail_fb_config;
		}
	}

	/* ...then fetch matching visual info for xcb. */
	{
		int error = FUNC7(display, fb_config[0],
						 GLX_VISUAL_ID, &visual);

		if (error) {
			FUNC2(LOG_ERROR, "Bad call to GetFBConfigAttrib!");
			goto fail_visual_id;
		}
	}

	xcb_colormap_t colormap = FUNC10(xcb_conn);
	uint32_t mask = XCB_CW_BORDER_PIXEL | XCB_CW_COLORMAP;
	uint32_t mask_values[] = {0, colormap, 0};

	FUNC8(xcb_conn, XCB_COLORMAP_ALLOC_NONE, colormap, parent,
			    visual);

	FUNC9(xcb_conn, 24 /* Hardcoded? */, wid, parent, 0, 0,
			  geometry->width, geometry->height, 0, 0, visual, mask,
			  mask_values);

	swap->wi->config = fb_config[0];
	swap->wi->window = wid;

	FUNC11(xcb_conn, wid);

	FUNC0(fb_config);
	status = true;
	goto success;

fail_visual_id:
	FUNC0(fb_config);
fail_fb_config:
fail_screen:
fail_geometry_request:
success:
	FUNC3(geometry);
	return status;
}