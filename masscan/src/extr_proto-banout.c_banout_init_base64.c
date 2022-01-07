
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerBase64 {scalar_t__ temp; scalar_t__ state; } ;



void
banout_init_base64(struct BannerBase64 *base64)
{
    base64->state = 0;
    base64->temp = 0;
}
