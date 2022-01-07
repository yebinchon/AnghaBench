
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeline {TYPE_1__* demuxer; } ;
struct dirent {char* d_name; } ;
struct bstr {int len; } ;
struct TYPE_2__ {char* filename; } ;
typedef int DIR ;


 int MP_ERR (struct timeline*,char*) ;
 int MP_WARN (struct timeline*,char*,...) ;
 struct bstr bstr0 (char*) ;
 scalar_t__ bstr_case_startswith (struct bstr,struct bstr) ;
 struct bstr bstr_strip_ext (struct bstr) ;
 int bstrdup0 (void*,struct bstr) ;
 int closedir (int *) ;
 char* mp_basename (char*) ;
 struct bstr mp_dirname (char*) ;
 char* mp_path_join_bstr (void*,struct bstr,struct bstr) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 scalar_t__ try_open (struct timeline*,char*) ;

__attribute__((used)) static bool open_source(struct timeline *tl, char *filename)
{
    void *ctx = talloc_new(((void*)0));
    bool res = 0;

    struct bstr dirname = mp_dirname(tl->demuxer->filename);

    struct bstr base_filename = bstr0(mp_basename(filename));
    if (!base_filename.len) {
        MP_WARN(tl, "CUE: Invalid audio filename in .cue file!\n");
    } else {
        char *fullname = mp_path_join_bstr(ctx, dirname, base_filename);
        if (try_open(tl, fullname)) {
            res = 1;
            goto out;
        }
    }






    struct bstr cuefile =
        bstr_strip_ext(bstr0(mp_basename(tl->demuxer->filename)));

    DIR *d = opendir(bstrdup0(ctx, dirname));
    if (!d)
        goto out;
    struct dirent *de;
    while ((de = readdir(d))) {
        char *dename0 = de->d_name;
        struct bstr dename = bstr0(dename0);
        if (bstr_case_startswith(dename, cuefile)) {
            MP_WARN(tl, "CUE: No useful audio filename "
                    "in .cue file found, trying with '%s' instead!\n",
                    dename0);
            if (try_open(tl, mp_path_join_bstr(ctx, dirname, dename))) {
                res = 1;
                break;
            }
        }
    }
    closedir(d);

out:
    talloc_free(ctx);
    if (!res)
        MP_ERR(tl, "CUE: Could not open audio file!\n");
    return res;
}
