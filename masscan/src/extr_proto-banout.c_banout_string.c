
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int protocol; unsigned char const* banner; struct BannerOutput* next; } ;



const unsigned char *
banout_string(const struct BannerOutput *banout, unsigned proto)
{
    while (banout && (banout->protocol&0xFFFF) != proto)
        banout = banout->next;

    if (banout)
        return banout->banner;
    else
        return ((void*)0);
}
