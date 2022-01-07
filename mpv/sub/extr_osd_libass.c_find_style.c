
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int n_styles; TYPE_1__* styles; } ;
struct TYPE_4__ {scalar_t__ Name; } ;
typedef TYPE_2__ ASS_Track ;


 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int find_style(ASS_Track *track, const char *name, int def)
{
    for (int n = 0; n < track->n_styles; n++) {
        if (track->styles[n].Name && strcmp(track->styles[n].Name, name) == 0)
            return n;
    }
    return def;
}
