
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image {int dummy; } ;
struct gl_video {int num_saved_imgs; TYPE_1__* saved_imgs; } ;
struct TYPE_2__ {struct image img; int name; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool saved_img_find(struct gl_video *p, const char *name,
                           struct image *out)
{
    if (!name || !out)
        return 0;

    for (int i = 0; i < p->num_saved_imgs; i++) {
        if (strcmp(p->saved_imgs[i].name, name) == 0) {
            *out = p->saved_imgs[i].img;
            return 1;
        }
    }

    return 0;
}
