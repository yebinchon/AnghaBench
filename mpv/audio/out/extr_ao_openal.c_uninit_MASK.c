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
struct priv {int /*<<< orphan*/  num_buffers; } ;
struct ao {struct priv* priv; } ;
typedef  int /*<<< orphan*/  ALCdevice ;
typedef  int /*<<< orphan*/  ALCcontext ;

/* Variables and functions */
 int /*<<< orphan*/  AL_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ao_data ; 
 int /*<<< orphan*/  buffers ; 
 int /*<<< orphan*/  source ; 

__attribute__((used)) static void FUNC9(struct ao *ao)
{
    struct priv *p = ao->priv;
    FUNC2(source);
    FUNC3(source, AL_BUFFER, 0);

    FUNC0(p->num_buffers, buffers);
    FUNC1(1, &source);

    ALCcontext *ctx = FUNC7();
    ALCdevice *dev = FUNC6(ctx);
    FUNC8(NULL);
    FUNC5(ctx);
    FUNC4(dev);
    ao_data = NULL;
}