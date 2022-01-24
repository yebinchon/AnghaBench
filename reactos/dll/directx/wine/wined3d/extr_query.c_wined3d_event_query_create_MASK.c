#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_query {int dummy; } ;
struct wined3d_parent_ops {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_event_query {struct wined3d_query query; int /*<<< orphan*/  signalled; int /*<<< orphan*/  fence; } ;
struct wined3d_device {TYPE_1__* adapter; } ;
typedef  enum wined3d_query_type { ____Placeholder_wined3d_query_type } wined3d_query_type ;
struct TYPE_2__ {struct wined3d_gl_info gl_info; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  WINED3D_OK ; 
 int /*<<< orphan*/  event_query_ops ; 
 struct wined3d_event_query* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_event_query*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_query*,struct wined3d_device*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void*,struct wined3d_parent_ops const*) ; 

__attribute__((used)) static HRESULT FUNC7(struct wined3d_device *device,
        enum wined3d_query_type type, void *parent, const struct wined3d_parent_ops *parent_ops,
        struct wined3d_query **query)
{
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;
    struct wined3d_event_query *object;
    HRESULT hr;

    FUNC1("device %p, type %#x, parent %p, parent_ops %p, query %p.\n",
            device, type, parent, parent_ops, query);

    if (!(object = FUNC3(sizeof(*object))))
        return E_OUTOFMEMORY;

    if (FUNC0(hr = FUNC5(&object->fence, gl_info)))
    {
        FUNC2("Event queries not supported.\n");
        FUNC4(object);
        return hr;
    }

    FUNC6(&object->query, device, type, &object->signalled,
            sizeof(object->signalled), &event_query_ops, parent, parent_ops);

    FUNC1("Created query %p.\n", object);
    *query = &object->query;

    return WINED3D_OK;
}