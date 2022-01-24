#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int bits; int sig; scalar_t__ le; int bps; int rate; int appbufsz; int round; scalar_t__ msb; int /*<<< orphan*/  pchan; } ;
struct priv {int /*<<< orphan*/ * hdl; TYPE_1__ par; int /*<<< orphan*/  pfd; int /*<<< orphan*/  havevol; } ;
struct pollfd {int dummy; } ;
struct mp_chmap_sel {int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  num; } ;
struct ao {scalar_t__ format; int samplerate; int period_size; TYPE_4__ channels; struct priv* priv; } ;
typedef  int /*<<< orphan*/  af_to_par ;

/* Variables and functions */
#define  AF_FORMAT_S16 130 
#define  AF_FORMAT_S32 129 
#define  AF_FORMAT_U8 128 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*,...) ; 
 int MP_NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SIO_DEVANY ; 
 scalar_t__ SIO_LE_NATIVE ; 
 int /*<<< orphan*/  SIO_PLAY ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*,struct mp_chmap_sel*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  movecb ; 
 int /*<<< orphan*/  FUNC6 (struct mp_chmap_sel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct priv*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sndio_layouts ; 
 int /*<<< orphan*/  volcb ; 

__attribute__((used)) static int FUNC16(struct ao *ao)
{
    struct priv *p = ao->priv;

    struct af_to_par {
        int format, bits, sig;
    };
    static const struct af_to_par af_to_par[] = {
        {AF_FORMAT_U8,   8, 0},
        {AF_FORMAT_S16, 16, 1},
        {AF_FORMAT_S32, 32, 1},
    };
    const struct af_to_par *ap;
    int i;

    p->hdl = FUNC13(SIO_DEVANY, SIO_PLAY, 0);
    if (p->hdl == NULL) {
        FUNC0(ao, "can't open sndio %s\n", SIO_DEVANY);
        goto error;
    }

    ao->format = FUNC3(ao->format);

    FUNC9(&p->par);
    for (i = 0, ap = af_to_par;; i++, ap++) {
        if (i == sizeof(af_to_par) / sizeof(struct af_to_par)) {
            FUNC1(ao, "unsupported format\n");
            p->par.bits = 16;
            p->par.sig = 1;
            p->par.le = SIO_LE_NATIVE;
            break;
        }
        if (ap->format == ao->format) {
            p->par.bits = ap->bits;
            p->par.sig = ap->sig;
            if (ap->bits > 8)
                p->par.le = SIO_LE_NATIVE;
            if (ap->bits != FUNC2(ap->bits))
                p->par.bps = ap->bits / 8;
            break;
        }
    }
    p->par.rate = ao->samplerate;

    struct mp_chmap_sel sel = {0};
    for (int n = 0; n < MP_NUM_CHANNELS+1; n++)
        FUNC6(&sel, &sndio_layouts[n]);

    if (!FUNC4(ao, &sel, &ao->channels))
        goto error;

    p->par.pchan = ao->channels.num;
    p->par.appbufsz = p->par.rate * 250 / 1000;    /* 250ms buffer */
    p->par.round = p->par.rate * 10 / 1000;    /*  10ms block size */
    if (!FUNC14(p->hdl, &p->par)) {
        FUNC0(ao, "couldn't set params\n");
        goto error;
    }
    if (!FUNC8(p->hdl, &p->par)) {
        FUNC0(ao, "couldn't get params\n");
        goto error;
    }
    if (p->par.bps > 1 && p->par.le != SIO_LE_NATIVE) {
        FUNC0(ao, "swapped endian output not supported\n");
        goto error;
    }
    if (p->par.bits == 8 && p->par.bps == 1 && !p->par.sig) {
        ao->format = AF_FORMAT_U8;
    } else if (p->par.bits == 16 && p->par.bps == 2 && p->par.sig) {
        ao->format = AF_FORMAT_S16;
    } else if ((p->par.bits == 32 || p->par.msb) && p->par.bps == 4 && p->par.sig) {
        ao->format = AF_FORMAT_S32;
    } else {
        FUNC0(ao, "couldn't set format\n");
        goto error;
    }

    p->havevol = FUNC12(p->hdl, volcb, p);
    FUNC11(p->hdl, movecb, p);
    if (!FUNC15(p->hdl))
        FUNC0(ao, "init: couldn't start\n");

    p->pfd = FUNC5 (FUNC10(p->hdl), sizeof (struct pollfd));
    if (!p->pfd)
        goto error;

    ao->period_size = p->par.round;

    return 0;

error:
    if (p->hdl)
      FUNC7(p->hdl);

    return -1;
}