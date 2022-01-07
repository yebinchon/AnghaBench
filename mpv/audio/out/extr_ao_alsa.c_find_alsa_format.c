
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alsa_fmt {int mp_format; } ;


 struct alsa_fmt const* mp_alsa_formats ;

__attribute__((used)) static const struct alsa_fmt *find_alsa_format(int mp_format)
{
    for (int n = 0; mp_alsa_formats[n].mp_format; n++) {
        if (mp_alsa_formats[n].mp_format == mp_format)
            return &mp_alsa_formats[n];
    }
    return ((void*)0);
}
