
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;







__attribute__((used)) static const char *gbm_format_to_string(uint32_t format)
{
    switch (format) {
    case 128:
        return "GBM_FORMAT_XRGB8888";
    case 130:
        return "GBM_FORMAT_ARGB8888";
    case 129:
        return "GBM_FORMAT_XRGB2101010";
    case 131:
        return "GBM_FORMAT_ARGB2101010";
    default:
        return "UNKNOWN";
    }
}
