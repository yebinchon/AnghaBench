
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeline {int global; int cancel; TYPE_1__* demuxer; } ;
struct demuxer_params {char* force_format; } ;
struct demuxer {int dummy; } ;
struct bstr {int dummy; } ;
struct TYPE_2__ {char* filename; } ;


 int MP_ERR (struct timeline*,char*,char*) ;
 int MP_WARN (struct timeline*,char*) ;
 int add_source (struct timeline*,struct demuxer*) ;
 struct bstr bstr0 (char*) ;
 scalar_t__ bstr_case_endswith (struct bstr,struct bstr) ;
 scalar_t__ bstrcasecmp (struct bstr,struct bstr) ;
 struct demuxer* demux_open_url (char*,struct demuxer_params*,int ,int ) ;

__attribute__((used)) static bool try_open(struct timeline *tl, char *filename)
{
    struct bstr bfilename = bstr0(filename);



    if (bstr_case_endswith(bfilename, bstr0(".cue"))
        || bstrcasecmp(bstr0(tl->demuxer->filename), bfilename) == 0)
        return 0;

    struct demuxer *d = demux_open_url(filename, ((void*)0), tl->cancel, tl->global);






    if (!d && bstr_case_endswith(bfilename, bstr0(".bin"))) {
        MP_WARN(tl, "CUE: Opening as BIN file!\n");
        struct demuxer_params p = {.force_format = "rawaudio"};
        d = demux_open_url(filename, &p, tl->cancel, tl->global);
    }
    if (d) {
        add_source(tl, d);
        return 1;
    }
    MP_ERR(tl, "Could not open source '%s'!\n", filename);
    return 0;
}
