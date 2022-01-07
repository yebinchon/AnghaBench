
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subfn {int member_0; } ;
struct mpv_global {int dummy; } ;
struct MPOpts {scalar_t__ sub_auto; scalar_t__ audiofile_auto; int audiofile_paths; int sub_paths; } ;


 int MP_TARRAY_APPEND (int *,struct subfn*,int,struct subfn) ;
 int STREAM_AUDIO ;
 int STREAM_SUB ;
 int append_dir_subtitles (struct mpv_global*,struct MPOpts*,struct subfn**,int*,int ,char const*,int ,int) ;
 int compare_sub_filename ;
 int compare_sub_priority ;
 int filter_subidx (struct subfn**,int*) ;
 int load_paths (struct mpv_global*,struct MPOpts*,struct subfn**,int*,char const*,int ,char*,int ) ;
 int mp_dirname (char const*) ;
 int qsort (struct subfn*,int,int,int ) ;
 struct subfn* slist ;
 struct subfn* talloc_array_ptrtype (int *,int ,int) ;

struct subfn *find_external_files(struct mpv_global *global, const char *fname,
                                  struct MPOpts *opts)
{
    struct subfn *slist = talloc_array_ptrtype(((void*)0), slist, 1);
    int n = 0;


    append_dir_subtitles(global, opts, &slist, &n, mp_dirname(fname), fname, 0, -1);


    if (opts->sub_auto >= 0) {
        load_paths(global, opts, &slist, &n, fname, opts->sub_paths, "sub",
                   STREAM_SUB);
    }

    if (opts->audiofile_auto >= 0) {
        load_paths(global, opts, &slist, &n, fname, opts->audiofile_paths,
                   "audio", STREAM_AUDIO);
    }


    qsort(slist, n, sizeof(*slist), compare_sub_filename);

    filter_subidx(&slist, &n);


    qsort(slist, n, sizeof(*slist), compare_sub_priority);

    struct subfn z = {0};
    MP_TARRAY_APPEND(((void*)0), slist, n, z);

    return slist;
}
