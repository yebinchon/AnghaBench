
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *af_fmt_to_str(int format)
{
    switch (format) {
    case 129: return "u8";
    case 142: return "s16";
    case 140: return "s32";
    case 138: return "s64";
    case 144: return "float";
    case 146: return "double";
    case 128: return "u8p";
    case 141: return "s16p";
    case 139: return "s32p";
    case 137: return "s64p";
    case 143: return "floatp";
    case 145: return "doublep";
    case 136: return "spdif-aac";
    case 135: return "spdif-ac3";
    case 134: return "spdif-dts";
    case 133: return "spdif-dtshd";
    case 132: return "spdif-eac3";
    case 131: return "spdif-mp3";
    case 130: return "spdif-truehd";
    }
    return "??";
}
