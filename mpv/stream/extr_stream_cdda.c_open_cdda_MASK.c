#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {char* path; int seekable; int streaming; char* demuxer; int /*<<< orphan*/  close; int /*<<< orphan*/  get_size; int /*<<< orphan*/  control; int /*<<< orphan*/  seek; int /*<<< orphan*/  fill_buffer; TYPE_4__* priv; int /*<<< orphan*/  global; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_26__ {int tracks; TYPE_1__* disc_toc; scalar_t__ nsectors; } ;
typedef  TYPE_3__ cdrom_drive_t ;
struct TYPE_27__ {int paranoia_mode; int toc_offset; char* device; scalar_t__ speed; int* span; scalar_t__ search_overlap; scalar_t__ start_sector; scalar_t__ sector; int /*<<< orphan*/ * cdp; scalar_t__ skip; int /*<<< orphan*/  end_sector; scalar_t__ toc_bias; TYPE_3__* cd; scalar_t__ sector_size; } ;
typedef  TYPE_4__ cdda_priv ;
struct TYPE_24__ {int dwStartSector; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDDA_MESSAGE_FORGETIT ; 
 char* DEFAULT_CDROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int PARANOIA_MODE_DISABLE ; 
 int PARANOIA_MODE_FULL ; 
 int PARANOIA_MODE_NEVERSKIP ; 
 int PARANOIA_MODE_OVERLAP ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int STREAM_ERROR ; 
 int STREAM_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  close_cdda ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  fill_buffer ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  get_size ; 
 int /*<<< orphan*/  m_option_type_string ; 
 TYPE_4__* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seek ; 
 int /*<<< orphan*/  stream_cdda_conf ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,char*) ; 

__attribute__((used)) static int FUNC21(stream_t *st)
{
    st->priv = FUNC13(st, st->global, &stream_cdda_conf);
    cdda_priv *priv = st->priv;
    cdda_priv *p = priv;
    int mode = p->paranoia_mode;
    int offset = p->toc_offset;
    cdrom_drive_t *cdd = NULL;
    int last_track;

    char *global_device;
    FUNC14(st->global, "cdrom-device", &m_option_type_string,
                       &global_device);
    FUNC20(st, global_device);

    if (st->path[0]) {
        p->device = st->path;
    } else if (global_device && global_device[0]) {
        p->device = global_device;
    } else {
        p->device = DEFAULT_CDROM_DEVICE;
    }

#if defined(__NetBSD__)
    cdd = cdda_identify_scsi(p->device, p->device, 0, NULL);
#else
    cdd = FUNC4(p->device, 0, NULL);
#endif

    if (!cdd) {
        FUNC0(st, "Can't open CDDA device.\n");
        return STREAM_ERROR;
    }

    FUNC11(cdd, CDDA_MESSAGE_FORGETIT, CDDA_MESSAGE_FORGETIT);

    if (p->sector_size)
        cdd->nsectors = p->sector_size;

    if (FUNC6(cdd) != 0) {
        FUNC0(st, "Can't open disc.\n");
        FUNC1(cdd);
        return STREAM_ERROR;
    }

    priv->cd = cdd;

    if (p->toc_bias)
        offset -= FUNC8(cdd, 1);

    if (offset) {
        for (int n = 0; n < cdd->tracks + 1; n++)
            cdd->disc_toc[n].dwStartSector += offset;
    }

    if (p->speed > 0)
        FUNC7(cdd, p->speed);

    last_track = FUNC10(cdd);
    if (p->span[0] > last_track)
        p->span[0] = last_track;
    if (p->span[1] < p->span[0])
        p->span[1] = p->span[0];
    if (p->span[1] > last_track)
        p->span[1] = last_track;
    if (p->span[0])
        priv->start_sector = FUNC8(cdd, p->span[0]);
    else
        priv->start_sector = FUNC2(cdd);

    if (p->span[1])
        priv->end_sector = FUNC9(cdd, p->span[1]);
    else
        priv->end_sector = FUNC3(cdd);

    priv->cdp = FUNC15(cdd);
    if (priv->cdp == NULL) {
        FUNC1(cdd);
        FUNC12(priv);
        return STREAM_ERROR;
    }

    if (mode == 0)
        mode = PARANOIA_MODE_DISABLE;
    else if (mode == 1)
        mode = PARANOIA_MODE_OVERLAP;
    else
        mode = PARANOIA_MODE_FULL;

    if (p->skip)
        mode &= ~PARANOIA_MODE_NEVERSKIP;
    else
        mode |= PARANOIA_MODE_NEVERSKIP;

    if (p->search_overlap > 0)
        mode |= PARANOIA_MODE_OVERLAP;
    else if (p->search_overlap == 0)
        mode &= ~PARANOIA_MODE_OVERLAP;

    FUNC16(priv->cdp, mode);

    if (p->search_overlap > 0)
        FUNC17(priv->cdp, p->search_overlap);

    FUNC18(priv->cdp, priv->start_sector, SEEK_SET);
    priv->sector = priv->start_sector;

    st->priv = priv;

    st->fill_buffer = fill_buffer;
    st->seek = seek;
    st->seekable = true;
    st->control = control;
    st->get_size = get_size;
    st->close = close_cdda;

    st->streaming = true;

    st->demuxer = "+disc";

    FUNC19(st, 0);

    return STREAM_OK;
}