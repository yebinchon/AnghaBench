
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeline_par {int num_parts; int init_fragment; TYPE_1__* parts; } ;
struct timeline {int num_sources; int sources; int global; int cancel; } ;
struct demuxer_params {int init_fragment; } ;
struct demuxer {TYPE_2__* stream; } ;
struct TYPE_4__ {int url; } ;
struct TYPE_3__ {struct demuxer* source; } ;


 int MP_ERR (struct timeline*,char*,char*) ;
 int MP_TARRAY_APPEND (struct timeline*,int ,int ,struct demuxer*) ;
 struct demuxer* demux_open_url (char*,struct demuxer_params*,int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct demuxer *open_source(struct timeline *root,
                                   struct timeline_par *tl, char *filename)
{
    for (int n = 0; n < tl->num_parts; n++) {
        struct demuxer *d = tl->parts[n].source;
        if (d && strcmp(d->stream->url, filename) == 0)
            return d;
    }
    struct demuxer_params params = {
        .init_fragment = tl->init_fragment,
    };
    struct demuxer *d = demux_open_url(filename, &params, root->cancel,
                                       root->global);
    if (d) {
        MP_TARRAY_APPEND(root, root->sources, root->num_sources, d);
    } else {
        MP_ERR(root, "EDL: Could not open source file '%s'.\n", filename);
    }
    return d;
}
