
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_25__ {char* path; int seekable; int streaming; char* demuxer; int close; int get_size; int control; int seek; int fill_buffer; TYPE_4__* priv; int global; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_26__ {int tracks; TYPE_1__* disc_toc; scalar_t__ nsectors; } ;
typedef TYPE_3__ cdrom_drive_t ;
struct TYPE_27__ {int paranoia_mode; int toc_offset; char* device; scalar_t__ speed; int* span; scalar_t__ search_overlap; scalar_t__ start_sector; scalar_t__ sector; int * cdp; scalar_t__ skip; int end_sector; scalar_t__ toc_bias; TYPE_3__* cd; scalar_t__ sector_size; } ;
typedef TYPE_4__ cdda_priv ;
struct TYPE_24__ {int dwStartSector; } ;


 int CDDA_MESSAGE_FORGETIT ;
 char* DEFAULT_CDROM_DEVICE ;
 int MP_ERR (TYPE_2__*,char*) ;
 int PARANOIA_MODE_DISABLE ;
 int PARANOIA_MODE_FULL ;
 int PARANOIA_MODE_NEVERSKIP ;
 int PARANOIA_MODE_OVERLAP ;
 int SEEK_SET ;
 int STREAM_ERROR ;
 int STREAM_OK ;
 int cdda_close (TYPE_3__*) ;
 scalar_t__ cdda_disc_firstsector (TYPE_3__*) ;
 int cdda_disc_lastsector (TYPE_3__*) ;
 TYPE_3__* cdda_identify (char*,int ,int *) ;
 TYPE_3__* cdda_identify_scsi (char*,char*,int ,int *) ;
 scalar_t__ cdda_open (TYPE_3__*) ;
 int cdda_speed_set (TYPE_3__*,scalar_t__) ;
 scalar_t__ cdda_track_firstsector (TYPE_3__*,int) ;
 int cdda_track_lastsector (TYPE_3__*,int) ;
 int cdda_tracks (TYPE_3__*) ;
 int cdda_verbose_set (TYPE_3__*,int ,int ) ;
 int close_cdda ;
 int control ;
 int fill_buffer ;
 int free (TYPE_4__*) ;
 int get_size ;
 int m_option_type_string ;
 TYPE_4__* mp_get_config_group (TYPE_2__*,int ,int *) ;
 int mp_read_option_raw (int ,char*,int *,char**) ;
 int * paranoia_init (TYPE_3__*) ;
 int paranoia_modeset (int *,int) ;
 int paranoia_overlapset (int *,scalar_t__) ;
 int paranoia_seek (int *,scalar_t__,int ) ;
 int print_cdtext (TYPE_2__*,int ) ;
 int seek ;
 int stream_cdda_conf ;
 int talloc_steal (TYPE_2__*,char*) ;

__attribute__((used)) static int open_cdda(stream_t *st)
{
    st->priv = mp_get_config_group(st, st->global, &stream_cdda_conf);
    cdda_priv *priv = st->priv;
    cdda_priv *p = priv;
    int mode = p->paranoia_mode;
    int offset = p->toc_offset;
    cdrom_drive_t *cdd = ((void*)0);
    int last_track;

    char *global_device;
    mp_read_option_raw(st->global, "cdrom-device", &m_option_type_string,
                       &global_device);
    talloc_steal(st, global_device);

    if (st->path[0]) {
        p->device = st->path;
    } else if (global_device && global_device[0]) {
        p->device = global_device;
    } else {
        p->device = DEFAULT_CDROM_DEVICE;
    }




    cdd = cdda_identify(p->device, 0, ((void*)0));


    if (!cdd) {
        MP_ERR(st, "Can't open CDDA device.\n");
        return STREAM_ERROR;
    }

    cdda_verbose_set(cdd, CDDA_MESSAGE_FORGETIT, CDDA_MESSAGE_FORGETIT);

    if (p->sector_size)
        cdd->nsectors = p->sector_size;

    if (cdda_open(cdd) != 0) {
        MP_ERR(st, "Can't open disc.\n");
        cdda_close(cdd);
        return STREAM_ERROR;
    }

    priv->cd = cdd;

    if (p->toc_bias)
        offset -= cdda_track_firstsector(cdd, 1);

    if (offset) {
        for (int n = 0; n < cdd->tracks + 1; n++)
            cdd->disc_toc[n].dwStartSector += offset;
    }

    if (p->speed > 0)
        cdda_speed_set(cdd, p->speed);

    last_track = cdda_tracks(cdd);
    if (p->span[0] > last_track)
        p->span[0] = last_track;
    if (p->span[1] < p->span[0])
        p->span[1] = p->span[0];
    if (p->span[1] > last_track)
        p->span[1] = last_track;
    if (p->span[0])
        priv->start_sector = cdda_track_firstsector(cdd, p->span[0]);
    else
        priv->start_sector = cdda_disc_firstsector(cdd);

    if (p->span[1])
        priv->end_sector = cdda_track_lastsector(cdd, p->span[1]);
    else
        priv->end_sector = cdda_disc_lastsector(cdd);

    priv->cdp = paranoia_init(cdd);
    if (priv->cdp == ((void*)0)) {
        cdda_close(cdd);
        free(priv);
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

    paranoia_modeset(priv->cdp, mode);

    if (p->search_overlap > 0)
        paranoia_overlapset(priv->cdp, p->search_overlap);

    paranoia_seek(priv->cdp, priv->start_sector, SEEK_SET);
    priv->sector = priv->start_sector;

    st->priv = priv;

    st->fill_buffer = fill_buffer;
    st->seek = seek;
    st->seekable = 1;
    st->control = control;
    st->get_size = get_size;
    st->close = close_cdda;

    st->streaming = 1;

    st->demuxer = "+disc";

    print_cdtext(st, 0);

    return STREAM_OK;
}
