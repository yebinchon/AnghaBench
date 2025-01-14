
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {int num; } ;
typedef int ch ;


 char* af_fmt_to_str (int) ;
 int mp_chmap_to_str_buf (char*,int,struct mp_chmap*) ;
 char* mp_chmap_to_str_hr (struct mp_chmap*) ;
 int mp_snprintf_cat (char*,int,char*,char*) ;
 int snprintf (char*,size_t,char*,int,char*,int,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char *audio_config_to_str_buf(char *buf, size_t buf_sz, int rate,
                                     int format, struct mp_chmap channels)
{
    char ch[128];
    mp_chmap_to_str_buf(ch, sizeof(ch), &channels);
    char *hr_ch = mp_chmap_to_str_hr(&channels);
    if (strcmp(hr_ch, ch) != 0)
        mp_snprintf_cat(ch, sizeof(ch), " (%s)", hr_ch);
    snprintf(buf, buf_sz, "%dHz %s %dch %s", rate,
             ch, channels.num, af_fmt_to_str(format));
    return buf;
}
