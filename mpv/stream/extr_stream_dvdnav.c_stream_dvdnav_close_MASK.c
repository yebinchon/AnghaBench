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
struct priv {scalar_t__ filename; scalar_t__ dvd_speed; int /*<<< orphan*/ * dvdnav; } ;
struct TYPE_4__ {struct priv* priv; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(stream_t *s)
{
    struct priv *priv = s->priv;
    FUNC1(priv->dvdnav);
    priv->dvdnav = NULL;
    if (priv->dvd_speed)
        FUNC0(s, priv->filename, -1);
    if (priv->filename)
        FUNC2(priv->filename);
}