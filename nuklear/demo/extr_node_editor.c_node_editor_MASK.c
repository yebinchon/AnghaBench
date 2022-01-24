#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct node_link {scalar_t__ output_slot; scalar_t__ input_slot; int /*<<< orphan*/  output_id; int /*<<< orphan*/  input_id; } ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_6__ {int input_slot; struct node* node; void* active; int /*<<< orphan*/  input_id; } ;
struct node_editor {int initialized; int show_grid; int link_count; TYPE_2__ scrolling; struct node* selected; int /*<<< orphan*/  bounds; struct node* begin; struct node_link* links; TYPE_1__ linking; struct node* end; int /*<<< orphan*/  node_count; } ;
struct nk_rect {float h; int x; float w; int y; } ;
struct TYPE_10__ {void* a; void* b; void* g; void* r; } ;
struct node {int output_count; int input_count; struct node* next; struct nk_rect bounds; int /*<<< orphan*/  ID; TYPE_5__ color; scalar_t__ prev; int /*<<< orphan*/  name; } ;
struct nk_vec2 {int x; int y; } ;
struct nk_panel {struct nk_rect bounds; } ;
struct TYPE_8__ {int x; int y; } ;
struct TYPE_9__ {TYPE_3__ delta; struct nk_vec2 pos; } ;
struct nk_input {TYPE_4__ mouse; } ;
struct nk_context {struct nk_input input; } ;
struct nk_command_buffer {int dummy; } ;
struct nk_color {int dummy; } ;
typedef  void* nk_byte ;

/* Variables and functions */
 int /*<<< orphan*/  NK_BUTTON_LEFT ; 
 int /*<<< orphan*/  NK_BUTTON_MIDDLE ; 
 int /*<<< orphan*/  NK_STATIC ; 
 int /*<<< orphan*/  NK_TEXT_CENTERED ; 
 int NK_WINDOW_BORDER ; 
 int NK_WINDOW_CLOSABLE ; 
 int NK_WINDOW_MOVABLE ; 
 int NK_WINDOW_NO_SCROLLBAR ; 
 int NK_WINDOW_TITLE ; 
 scalar_t__ FUNC0 (int,float const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nk_context*,TYPE_5__) ; 
 scalar_t__ FUNC4 (struct nk_context*,int /*<<< orphan*/ ,struct nk_vec2,struct nk_rect) ; 
 int /*<<< orphan*/  FUNC5 (struct nk_context*) ; 
 scalar_t__ FUNC6 (struct nk_context*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nk_context*) ; 
 void* nk_false ; 
 int /*<<< orphan*/  FUNC8 (struct nk_command_buffer*,struct nk_rect,struct nk_color) ; 
 scalar_t__ FUNC9 (struct nk_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nk_context*) ; 
 scalar_t__ FUNC11 (struct nk_input const*,int /*<<< orphan*/ ,struct nk_rect,void*) ; 
 scalar_t__ FUNC12 (struct nk_input const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct nk_input const*,struct nk_rect) ; 
 scalar_t__ FUNC14 (struct nk_input const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct nk_input const*,int /*<<< orphan*/ ,struct nk_rect) ; 
 int /*<<< orphan*/  FUNC16 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nk_context*,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 struct nk_rect FUNC18 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC19 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC20 (struct nk_context*,int /*<<< orphan*/ ) ; 
 struct nk_rect FUNC21 (struct nk_context*,struct nk_rect) ; 
 struct nk_rect FUNC22 (struct nk_context*,struct nk_rect) ; 
 struct nk_vec2 FUNC23 (struct nk_context*,struct nk_vec2) ; 
 scalar_t__ FUNC24 (struct nk_context*,char*,int /*<<< orphan*/ ,void*,int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int,int,int,int) ; 
 struct nk_color FUNC26 (int,int,int) ; 
 int /*<<< orphan*/  FUNC27 (struct nk_command_buffer*,int,int,int,int,int,int,int,int,float,struct nk_color) ; 
 int /*<<< orphan*/  FUNC28 (struct nk_command_buffer*,int,int,int,int,float,struct nk_color const) ; 
 void* nk_true ; 
 struct nk_vec2 FUNC29 (int,int) ; 
 struct nk_rect FUNC30 (struct nk_context*) ; 
 struct nk_command_buffer* FUNC31 (struct nk_context*) ; 
 struct nk_rect FUNC32 (struct nk_context*) ; 
 struct nk_panel* FUNC33 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC34 (struct nk_context*,char*) ; 
 struct node_editor nodeEditor ; 
 int /*<<< orphan*/  FUNC35 (struct node_editor*,char*,int /*<<< orphan*/ ,struct nk_color,int,int) ; 
 struct node* FUNC36 (struct node_editor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct node_editor*) ; 
 int /*<<< orphan*/  FUNC38 (struct node_editor*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC39 (struct node_editor*,struct node*) ; 
 int /*<<< orphan*/  FUNC40 (struct node_editor*,struct node*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC41(struct nk_context *ctx)
{
    int n = 0;
    struct nk_rect total_space;
    const struct nk_input *in = &ctx->input;
    struct nk_command_buffer *canvas;
    struct node *updated = 0;
    struct node_editor *nodedit = &nodeEditor;

    if (!nodeEditor.initialized) {
        FUNC37(&nodeEditor);
        nodeEditor.initialized = 1;
    }

    if (FUNC2(ctx, "NodeEdit", FUNC25(0, 0, 800, 600),
        NK_WINDOW_BORDER|NK_WINDOW_NO_SCROLLBAR|NK_WINDOW_MOVABLE|NK_WINDOW_CLOSABLE))
    {
        /* allocate complete window space */
        canvas = FUNC31(ctx);
        total_space = FUNC32(ctx);
        FUNC17(ctx, NK_STATIC, total_space.h, nodedit->node_count);
        {
            struct node *it = nodedit->begin;
            struct nk_rect size = FUNC18(ctx);
            struct nk_panel *node = 0;

            if (nodedit->show_grid) {
                /* display grid */
                float x, y;
                const float grid_size = 32.0f;
                const struct nk_color grid_color = FUNC26(50, 50, 50);
                for (x = (float)FUNC0(size.x - nodedit->scrolling.x, grid_size); x < size.w; x += grid_size)
                    FUNC28(canvas, x+size.x, size.y, x+size.x, size.y+size.h, 1.0f, grid_color);
                for (y = (float)FUNC0(size.y - nodedit->scrolling.y, grid_size); y < size.h; y += grid_size)
                    FUNC28(canvas, size.x, y+size.y, size.x+size.w, y+size.y, 1.0f, grid_color);
            }

            /* execute each node as a movable group */
            while (it) {
                /* calculate scrolled node window position and size */
                FUNC20(ctx, FUNC25(it->bounds.x - nodedit->scrolling.x,
                    it->bounds.y - nodedit->scrolling.y, it->bounds.w, it->bounds.h));

                /* execute node window */
                if (FUNC9(ctx, it->name, NK_WINDOW_MOVABLE|NK_WINDOW_NO_SCROLLBAR|NK_WINDOW_BORDER|NK_WINDOW_TITLE))
                {
                    /* always have last selected node on top */

                    node = FUNC33(ctx);
                    if (FUNC15(in, NK_BUTTON_LEFT, node->bounds) &&
                        (!(it->prev && FUNC15(in, NK_BUTTON_LEFT,
                        FUNC22(ctx, node->bounds)))) &&
                        nodedit->end != it)
                    {
                        updated = it;
                    }

                    /* ================= NODE CONTENT =====================*/
                    FUNC16(ctx, 25, 1);
                    FUNC3(ctx, it->color);
                    it->color.r = (nk_byte)FUNC24(ctx, "#R:", 0, it->color.r, 255, 1,1);
                    it->color.g = (nk_byte)FUNC24(ctx, "#G:", 0, it->color.g, 255, 1,1);
                    it->color.b = (nk_byte)FUNC24(ctx, "#B:", 0, it->color.b, 255, 1,1);
                    it->color.a = (nk_byte)FUNC24(ctx, "#A:", 0, it->color.a, 255, 1,1);
                    /* ====================================================*/
                    FUNC10(ctx);
                }
                {
                    /* node connector and linking */
                    float space;
                    struct nk_rect bounds;
                    bounds = FUNC21(ctx, node->bounds);
                    bounds.x += nodedit->scrolling.x;
                    bounds.y += nodedit->scrolling.y;
                    it->bounds = bounds;

                    /* output connector */
                    space = node->bounds.h / (float)((it->output_count) + 1);
                    for (n = 0; n < it->output_count; ++n) {
                        struct nk_rect circle;
                        circle.x = node->bounds.x + node->bounds.w-4;
                        circle.y = node->bounds.y + space * (float)(n+1);
                        circle.w = 8; circle.h = 8;
                        FUNC8(canvas, circle, FUNC26(100, 100, 100));

                        /* start linking process */
                        if (FUNC11(in, NK_BUTTON_LEFT, circle, nk_true)) {
                            nodedit->linking.active = nk_true;
                            nodedit->linking.node = it;
                            nodedit->linking.input_id = it->ID;
                            nodedit->linking.input_slot = n;
                        }

                        /* draw curve from linked node slot to mouse position */
                        if (nodedit->linking.active && nodedit->linking.node == it &&
                            nodedit->linking.input_slot == n) {
                            struct nk_vec2 l0 = FUNC29(circle.x + 3, circle.y + 3);
                            struct nk_vec2 l1 = in->mouse.pos;
                            FUNC27(canvas, l0.x, l0.y, l0.x + 50.0f, l0.y,
                                l1.x - 50.0f, l1.y, l1.x, l1.y, 1.0f, FUNC26(100, 100, 100));
                        }
                    }

                    /* input connector */
                    space = node->bounds.h / (float)((it->input_count) + 1);
                    for (n = 0; n < it->input_count; ++n) {
                        struct nk_rect circle;
                        circle.x = node->bounds.x-4;
                        circle.y = node->bounds.y + space * (float)(n+1);
                        circle.w = 8; circle.h = 8;
                        FUNC8(canvas, circle, FUNC26(100, 100, 100));
                        if (FUNC14(in, NK_BUTTON_LEFT) &&
                            FUNC13(in, circle) &&
                            nodedit->linking.active && nodedit->linking.node != it) {
                            nodedit->linking.active = nk_false;
                            FUNC38(nodedit, nodedit->linking.input_id,
                                nodedit->linking.input_slot, it->ID, n);
                        }
                    }
                }
                it = it->next;
            }

            /* reset linking connection */
            if (nodedit->linking.active && FUNC14(in, NK_BUTTON_LEFT)) {
                nodedit->linking.active = nk_false;
                nodedit->linking.node = NULL;
                FUNC1(stdout, "linking failed\n");
            }

            /* draw each link */
            for (n = 0; n < nodedit->link_count; ++n) {
                struct node_link *link = &nodedit->links[n];
                struct node *ni = FUNC36(nodedit, link->input_id);
                struct node *no = FUNC36(nodedit, link->output_id);
                float spacei = node->bounds.h / (float)((ni->output_count) + 1);
                float spaceo = node->bounds.h / (float)((no->input_count) + 1);
                struct nk_vec2 l0 = FUNC23(ctx,
                    FUNC29(ni->bounds.x + ni->bounds.w, 3.0f + ni->bounds.y + spacei * (float)(link->input_slot+1)));
                struct nk_vec2 l1 = FUNC23(ctx,
                    FUNC29(no->bounds.x, 3.0f + no->bounds.y + spaceo * (float)(link->output_slot+1)));

                l0.x -= nodedit->scrolling.x;
                l0.y -= nodedit->scrolling.y;
                l1.x -= nodedit->scrolling.x;
                l1.y -= nodedit->scrolling.y;
                FUNC27(canvas, l0.x, l0.y, l0.x + 50.0f, l0.y,
                    l1.x - 50.0f, l1.y, l1.x, l1.y, 1.0f, FUNC26(100, 100, 100));
            }

            if (updated) {
                /* reshuffle nodes to have least recently selected node on top */
                FUNC39(nodedit, updated);
                FUNC40(nodedit, updated);
            }

            /* node selection */
            if (FUNC15(in, NK_BUTTON_LEFT, FUNC18(ctx))) {
                it = nodedit->begin;
                nodedit->selected = NULL;
                nodedit->bounds = FUNC25(in->mouse.pos.x, in->mouse.pos.y, 100, 200);
                while (it) {
                    struct nk_rect b = FUNC22(ctx, it->bounds);
                    b.x -= nodedit->scrolling.x;
                    b.y -= nodedit->scrolling.y;
                    if (FUNC13(in, b))
                        nodedit->selected = it;
                    it = it->next;
                }
            }

            /* contextual menu */
            if (FUNC4(ctx, 0, FUNC29(100, 220), FUNC30(ctx))) {
                const char *grid_option[] = {"Show Grid", "Hide Grid"};
                FUNC16(ctx, 25, 1);
                if (FUNC6(ctx, "New", NK_TEXT_CENTERED))
                    FUNC35(nodedit, "New", FUNC25(400, 260, 180, 220),
                            FUNC26(255, 255, 255), 1, 2);
                if (FUNC6(ctx, grid_option[nodedit->show_grid],NK_TEXT_CENTERED))
                    nodedit->show_grid = !nodedit->show_grid;
                FUNC5(ctx);
            }
        }
        FUNC19(ctx);

        /* window content scrolling */
        if (FUNC13(in, FUNC30(ctx)) &&
            FUNC12(in, NK_BUTTON_MIDDLE)) {
            nodedit->scrolling.x += in->mouse.delta.x;
            nodedit->scrolling.y += in->mouse.delta.y;
        }
    }
    FUNC7(ctx);
    return !FUNC34(ctx, "NodeEdit");
}