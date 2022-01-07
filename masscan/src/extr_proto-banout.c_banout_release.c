
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {struct BannerOutput* next; } ;


 int banout_init (struct BannerOutput*) ;
 int free (struct BannerOutput*) ;

void
banout_release(struct BannerOutput *banout)
{
    while (banout->next) {
        struct BannerOutput *next = banout->next->next;
        free(banout->next);
        banout->next = next;
    }
    banout_init(banout);
}
