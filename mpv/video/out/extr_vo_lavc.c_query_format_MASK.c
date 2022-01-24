#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vo {struct priv* priv; } ;
struct priv {TYPE_3__* enc; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_2__* encoder; } ;
struct TYPE_5__ {TYPE_1__* codec; } ;
struct TYPE_4__ {int* pix_fmts; } ;

/* Variables and functions */
 int const AV_PIX_FMT_NONE ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct vo *vo, int format)
{
    struct priv *vc = vo->priv;

    enum AVPixelFormat pix_fmt = FUNC0(format);
    const enum AVPixelFormat *p = vc->enc->encoder->codec->pix_fmts;

    if (!p)
        return 1;

    while (*p != AV_PIX_FMT_NONE) {
        if (*p == pix_fmt)
            return 1;
        p++;
    }

    return 0;
}