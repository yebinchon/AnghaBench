
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_root {int num_pars; struct tl_parts** pars; } ;
struct tl_parts {int dummy; } ;
struct timeline_par {int dash; int no_clip; int num_parts; } ;
struct timeline {char* format; TYPE_1__* demuxer; } ;
struct priv {int allow_any; int data; } ;
struct TYPE_2__ {int filename; struct priv* priv; } ;


 int MP_ERR (struct timeline*,char*) ;
 struct timeline_par* build_timeline (struct timeline*,struct tl_parts*) ;
 int fix_filenames (struct tl_parts*,int ) ;
 struct tl_root* parse_edl (int ) ;
 int talloc_free (struct tl_root*) ;

__attribute__((used)) static void build_mpv_edl_timeline(struct timeline *tl)
{
    struct priv *p = tl->demuxer->priv;

    struct tl_root *root = parse_edl(p->data);
    if (!root) {
        MP_ERR(tl, "Error in EDL.\n");
        return;
    }

    bool all_dash = 1;
    bool all_no_clip = 1;
    bool all_single = 1;

    for (int n = 0; n < root->num_pars; n++) {
        struct tl_parts *parts = root->pars[n];
        if (!p->allow_any)
            fix_filenames(parts, tl->demuxer->filename);
        struct timeline_par *par = build_timeline(tl, parts);
        if (!par)
            break;
        all_dash &= par->dash;
        all_no_clip &= par->no_clip;
        all_single &= par->num_parts == 1;
    }

    if (all_dash) {
        tl->format = "dash";
    } else if (all_no_clip && all_single) {
        tl->format = "multi";
    } else {
        tl->format = "edl";
    }

    talloc_free(root);
}
