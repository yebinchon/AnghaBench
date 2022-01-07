
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wasapi_sample_fmt {int bits; int used_msb; int mp_format; } ;
struct mp_chmap {int dummy; } ;
struct TYPE_5__ {scalar_t__ nSamplesPerSec; } ;
typedef TYPE_1__ WAVEFORMATEX ;


 char* af_fmt_to_str (int ) ;
 int chmap_from_waveformat (struct mp_chmap*,TYPE_1__*) ;
 struct wasapi_sample_fmt format_from_waveformat (TYPE_1__*) ;
 char* mp_chmap_to_str (struct mp_chmap*) ;
 int snprintf (char*,size_t,char*,char*,char*,int,int,unsigned int) ;

__attribute__((used)) static char *waveformat_to_str_buf(char *buf, size_t buf_size, WAVEFORMATEX *wf)
{
    struct mp_chmap channels;
    chmap_from_waveformat(&channels, wf);

    struct wasapi_sample_fmt format = format_from_waveformat(wf);

    snprintf(buf, buf_size, "%s %s (%d/%d bits) @ %uhz",
             mp_chmap_to_str(&channels),
             af_fmt_to_str(format.mp_format), format.bits, format.used_msb,
             (unsigned) wf->nSamplesPerSec);
    return buf;
}
