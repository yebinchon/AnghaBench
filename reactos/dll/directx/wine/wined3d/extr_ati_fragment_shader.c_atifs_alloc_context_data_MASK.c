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
struct wined3d_context {struct atifs_context_private_data* fragment_pipe_data; } ;
struct atifs_context_private_data {int dummy; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 struct atifs_context_private_data* FUNC0 (int) ; 

__attribute__((used)) static BOOL FUNC1(struct wined3d_context *context)
{
    struct atifs_context_private_data *priv;

    if (!(priv = FUNC0(sizeof(*priv))))
        return FALSE;
    context->fragment_pipe_data = priv;
    return TRUE;
}