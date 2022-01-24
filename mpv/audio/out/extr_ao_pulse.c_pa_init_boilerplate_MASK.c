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
struct priv {char* cfg_host; int /*<<< orphan*/  mainloop; scalar_t__ context; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  wakeup_lock; } ;
struct ao {scalar_t__ probing; int /*<<< orphan*/  client_name; struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PA_CONTEXT_READY ; 
 scalar_t__ PA_ERR_CONNECTIONREFUSED ; 
 int /*<<< orphan*/  context_state_cb ; 
 scalar_t__ FUNC4 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,struct ao*) ; 
 long FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  subscribe_cb ; 
 int /*<<< orphan*/  FUNC21 (struct ao*) ; 

__attribute__((used)) static int FUNC22(struct ao *ao)
{
    struct priv *priv = ao->priv;
    char *host = priv->cfg_host && priv->cfg_host[0] ? priv->cfg_host : NULL;
    bool locked = false;

    FUNC20(&priv->wakeup_lock, NULL);
    FUNC19(&priv->wakeup, NULL);

    if (!(priv->mainloop = FUNC15())) {
        FUNC1(ao, "Failed to allocate main loop\n");
        goto fail;
    }

    if (FUNC16(priv->mainloop) < 0)
        goto fail;

    FUNC14(priv->mainloop);
    locked = true;

    if (!(priv->context = FUNC9(FUNC13(
                                         priv->mainloop), ao->client_name)))
    {
        FUNC1(ao, "Failed to allocate context\n");
        goto fail;
    }

    FUNC2(ao, "Library version: %s\n", FUNC12());
    FUNC2(ao, "Proto: %lu\n",
        (long)FUNC6(priv->context));
    FUNC2(ao, "Server proto: %lu\n",
        (long)FUNC7(priv->context));

    FUNC10(priv->context, context_state_cb, ao);
    FUNC11(priv->context, subscribe_cb, ao);

    if (FUNC4(priv->context, host, 0, NULL) < 0)
        goto fail;

    /* Wait until the context is ready */
    while (1) {
        int state = FUNC8(priv->context);
        if (state == PA_CONTEXT_READY)
            break;
        if (!FUNC3(state))
            goto fail;
        FUNC18(priv->mainloop);
    }

    FUNC17(priv->mainloop);
    return 0;

fail:
    if (locked)
        FUNC17(priv->mainloop);

    if (priv->context) {
        FUNC14(priv->mainloop);
        if (!(FUNC5(priv->context) == PA_ERR_CONNECTIONREFUSED
              && ao->probing))
            FUNC0("Init failed");
        FUNC17(priv->mainloop);
    }
    FUNC21(ao);
    return -1;
}