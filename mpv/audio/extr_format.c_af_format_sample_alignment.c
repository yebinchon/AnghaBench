
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int af_format_sample_alignment(int format)
{
    switch (format) {
    case 134: return 16384 / 4;
    case 133: return 6144 / 4;
    case 131: return 32768 / 16;
    case 132: return 2048 / 4;
    case 130: return 24576 / 4;
    case 129: return 4608 / 4;
    case 128: return 61440 / 16;
    default: return 1;
    }
}
