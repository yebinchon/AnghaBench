
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {unsigned int protocol; int length; struct BannerOutput* next; } ;



unsigned
banout_string_length(const struct BannerOutput *banout, unsigned proto)
{
    while (banout && banout->protocol != proto)
        banout = banout->next;

    if (banout)
        return banout->length;
    else
        return 0;
}
