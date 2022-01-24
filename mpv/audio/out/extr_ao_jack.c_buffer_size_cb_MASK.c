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
struct priv {int /*<<< orphan*/  buffer_size; } ;
struct ao {struct priv* priv; } ;
typedef  int /*<<< orphan*/  jack_nframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(jack_nframes_t nframes, void *arg)
{
    struct ao *ao = arg;
    struct priv *p = ao->priv;

    FUNC0(&p->buffer_size, nframes);

    return 0;
}