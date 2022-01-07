
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *aacs_strerr(int err)
{
    switch (err) {
    case 134: return "opening or reading of AACS files failed";
    case 130: return "missing config file";
    case 128: return "no matching processing key";
    case 131: return "no valid certificate";
    case 135: return "certificate has been revoked";
    case 132: return "MMC open failed (maybe no MMC drive?)";
    case 133: return "MMC failed";
    case 129: return "no matching device key";
    default: return "unknown error";
    }
}
