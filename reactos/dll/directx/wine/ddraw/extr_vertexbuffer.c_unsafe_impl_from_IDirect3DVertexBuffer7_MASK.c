#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct d3d_vertex_buffer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
typedef  TYPE_1__ IDirect3DVertexBuffer7 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  d3d_vertex_buffer7_vtbl ; 
 struct d3d_vertex_buffer* FUNC1 (TYPE_1__*) ; 

struct d3d_vertex_buffer *FUNC2(IDirect3DVertexBuffer7 *iface)
{
    if (!iface)
        return NULL;
    FUNC0(iface->lpVtbl == &d3d_vertex_buffer7_vtbl);

    return FUNC1(iface);
}