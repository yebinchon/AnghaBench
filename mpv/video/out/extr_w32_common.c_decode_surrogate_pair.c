
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static int decode_surrogate_pair(wchar_t lead, wchar_t trail)
{
    return 0x10000 + (((lead & 0x3ff) << 10) | (trail & 0x3ff));
}
