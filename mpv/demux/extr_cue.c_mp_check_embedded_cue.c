
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cue_file {int num_tracks; TYPE_1__* tracks; } ;
struct TYPE_2__ {char* filename; } ;


 scalar_t__ strcmp (char*,char*) ;

int mp_check_embedded_cue(struct cue_file *f)
{
    char *fn0 = f->tracks[0].filename;
    for (int n = 1; n < f->num_tracks; n++) {
        char *fn = f->tracks[n].filename;

        if (fn0 == fn)
            continue;

        if (!fn0 || !fn || strcmp(fn0, fn) != 0)
            return -1;
    }
    return 0;
}
