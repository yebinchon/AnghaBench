#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct priv {int /*<<< orphan*/  dvdnav; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(stream_t *stream, int sid)
{
    uint8_t k;
    uint16_t lang;
    struct priv *priv = stream->priv;
    if (sid < 0)
        return 0;
    for (k = 0; k < 32; k++)
        if (FUNC0(priv->dvdnav, k) == sid)
            break;
    if (k == 32)
        return 0;
    lang = FUNC1(priv->dvdnav, k);
    if (lang == 0xffff)
        return 0;
    return lang;
}