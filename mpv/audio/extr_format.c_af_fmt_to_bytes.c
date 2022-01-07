
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int af_fmt_from_planar (int) ;
 scalar_t__ af_fmt_is_spdif (int) ;

int af_fmt_to_bytes(int format)
{
    switch (af_fmt_from_planar(format)) {
    case 128: return 1;
    case 131: return 2;
    case 130: return 4;
    case 129: return 8;
    case 132: return 4;
    case 133: return 8;
    }
    if (af_fmt_is_spdif(format))
        return 2;
    return 0;
}
