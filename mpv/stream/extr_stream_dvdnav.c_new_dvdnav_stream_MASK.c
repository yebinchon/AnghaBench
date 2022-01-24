#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  dvdnav; int /*<<< orphan*/ * filename; int /*<<< orphan*/  dvd_speed; TYPE_1__* opts; } ;
struct TYPE_7__ {struct priv* priv; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_6__ {int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 scalar_t__ DVDNAV_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 

__attribute__((used)) static struct priv *FUNC8(stream_t *stream, char *filename)
{
    struct priv *priv = stream->priv;
    const char *title_str;

    if (!filename)
        return NULL;

    if (!(priv->filename = FUNC7(filename)))
        return NULL;

    priv->dvd_speed = priv->opts->speed;
    FUNC1(stream, priv->filename, priv->dvd_speed);

    if (FUNC3(&(priv->dvdnav), priv->filename) != DVDNAV_STATUS_OK) {
        FUNC6(priv->filename);
        priv->filename = NULL;
        return NULL;
    }

    if (!priv->dvdnav)
        return NULL;

    FUNC5(priv->dvdnav, 1);
    if (FUNC4(priv->dvdnav, 1) != DVDNAV_STATUS_OK)
        FUNC0(stream, "stream_dvdnav, failed to set PGC positioning\n");
    /* report the title?! */
    FUNC2(priv->dvdnav, &title_str);

    return priv;
}