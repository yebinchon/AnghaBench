
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* filter; int* mask; } ;
struct dmx_sct_filter_params {int flags; scalar_t__ timeout; TYPE_1__ filter; scalar_t__ pid; } ;
typedef int fparams ;
typedef int dvb_priv_t ;
typedef int demux_dev ;
typedef int buft ;


 int DMX_CHECK_CRC ;
 int DMX_IMMEDIATE_START ;
 int DMX_SET_FILTER ;
 scalar_t__ EOVERFLOW ;
 int MP_ERR (int *,char*,scalar_t__) ;
 int O_RDWR ;
 int PATH_MAX ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,struct dmx_sct_filter_params*) ;
 int memset (struct dmx_sct_filter_params*,int,int) ;
 int open (char*,int ) ;
 int read (int,unsigned char*,int) ;
 int snprintf (char*,int,char*,int) ;

int dvb_get_pmt_pid(dvb_priv_t *priv, int devno, int service_id)
{


    char demux_dev[PATH_MAX];
    snprintf(demux_dev, sizeof(demux_dev), "/dev/dvb/adapter%d/demux0", devno);

    struct dmx_sct_filter_params fparams;

    memset(&fparams, 0x00, sizeof(fparams));
    fparams.pid = 0;
    fparams.filter.filter[0] = 0x00;
    fparams.filter.mask[0] = 0xff;
    fparams.timeout = 0;
    fparams.flags = DMX_IMMEDIATE_START | DMX_CHECK_CRC;

    int pat_fd;
    if ((pat_fd = open(demux_dev, O_RDWR)) < 0) {
        MP_ERR(priv, "Opening PAT DEMUX failed, error: %d", errno);
        return -1;
    }

    if (ioctl(pat_fd, DMX_SET_FILTER, &fparams) < 0) {
        MP_ERR(priv, "ioctl DMX_SET_FILTER failed, error: %d", errno);
        close(pat_fd);
        return -1;
    }

    int bytes_read;
    int section_length;
    unsigned char buft[4096];
    unsigned char *bufptr = buft;

    int pmt_pid = -1;

    bool pat_read = 0;
    while (!pat_read) {
        if (((bytes_read =
                  read(pat_fd, bufptr,
                       sizeof(buft))) < 0) && errno == EOVERFLOW)
            bytes_read = read(pat_fd, bufptr, sizeof(buft));
        if (bytes_read < 0) {
            MP_ERR(priv, "PAT: read_sections: read error: %d", errno);
            close(pat_fd);
            return -1;
        }

        section_length = ((bufptr[1] & 0x0f) << 8) | bufptr[2];
        if (bytes_read != section_length + 3)
            continue;

        bufptr += 8;
        section_length -= 8;


        pat_read = 1;
        while (section_length > 0) {
            int this_service_id = (bufptr[0] << 8) | bufptr[1];
            if (this_service_id == service_id) {
                pmt_pid = ((bufptr[2] & 0x1f) << 8) | bufptr[3];
                section_length = 0;
            }
            bufptr += 4;
            section_length -= 4;
        }
    }
    close(pat_fd);

    return pmt_pid;
}
