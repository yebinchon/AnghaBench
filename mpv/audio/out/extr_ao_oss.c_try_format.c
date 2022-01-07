
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int audio_fd; } ;
struct ao {struct priv* priv; } ;


 int AFMT_AC3 ;
 int MP_ERR (struct ao*,char*,int) ;
 int MP_VERBOSE (struct ao*,char*,int ) ;
 int MP_WARN (struct ao*,char*,int ) ;
 int SNDCTL_DSP_SETFMT ;
 scalar_t__ af_fmt_is_spdif (int) ;
 int af_fmt_to_str (int) ;
 int format2oss (int) ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int oss2format (int) ;

__attribute__((used)) static bool try_format(struct ao *ao, int *format)
{
    struct priv *p = ao->priv;

    int oss_format = format2oss(*format);
    if (oss_format == -1 && af_fmt_is_spdif(*format))
        oss_format = AFMT_AC3;

    if (oss_format == -1) {
        MP_VERBOSE(ao, "Unknown/not supported internal format: %s\n",
                   af_fmt_to_str(*format));
        *format = 0;
        return 0;
    }

    int actual_format = oss_format;
    if (ioctl(p->audio_fd, SNDCTL_DSP_SETFMT, &actual_format) < 0)
        actual_format = -1;

    if (actual_format == oss_format)
        return 1;

    MP_WARN(ao, "Can't set audio device to %s output.\n", af_fmt_to_str(*format));
    *format = oss2format(actual_format);
    if (actual_format != -1 && !*format)
        MP_ERR(ao, "Unknown/Unsupported OSS format: 0x%x.\n", actual_format);
    return 0;
}
