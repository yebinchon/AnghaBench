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
struct mp_decoder {struct mp_filter* f; } ;
struct priv {struct mp_decoder public; } ;
struct mp_filter {struct priv* priv; int /*<<< orphan*/  log; } ;
struct mp_codec_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  ad_lavc_filter ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,struct mp_codec_params*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC2 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_filter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_filter*) ; 

__attribute__((used)) static struct mp_decoder *FUNC5(struct mp_filter *parent,
                                 struct mp_codec_params *codec,
                                 const char *decoder)
{
    struct mp_filter *da = FUNC2(parent, &ad_lavc_filter);
    if (!da)
        return NULL;

    FUNC1(da, MP_PIN_IN, "in");
    FUNC1(da, MP_PIN_OUT, "out");

    da->log = FUNC3(da, parent->log, NULL);

    struct priv *priv = da->priv;
    priv->public.f = da;

    if (!FUNC0(da, codec, decoder)) {
        FUNC4(da);
        return NULL;
    }
    return &priv->public;
}