
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct demuxer {TYPE_1__* priv; } ;
struct TYPE_3__ {int filename; } ;
typedef TYPE_1__ lavf_priv_t ;
typedef int bstr ;
typedef int AVDictionary ;


 int BSTR_P (int ) ;
 int MP_VERBOSE (struct demuxer*,char*,char*) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int bstr0 (int ) ;
 scalar_t__ bstr_split_tok (int ,char*,int *,int *) ;
 int matches_avinputformat_name (TYPE_1__*,char*) ;
 scalar_t__ mp_is_url (int ) ;
 char* replace_idx_ext (void*,int ) ;
 char* talloc_asprintf (void*,char*,char*,...) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

__attribute__((used)) static void guess_and_set_vobsub_name(struct demuxer *demuxer, AVDictionary **d)
{
    lavf_priv_t *priv = demuxer->priv;
    if (!matches_avinputformat_name(priv, "vobsub"))
        return;

    void *tmp = talloc_new(((void*)0));
    bstr bfilename = bstr0(priv->filename);
    char *subname = ((void*)0);
    if (mp_is_url(bfilename)) {


        bstr start, end;
        if (bstr_split_tok(bfilename, "?", &start, &end)) {
            subname = replace_idx_ext(tmp, start);
            if (subname)
                subname = talloc_asprintf(tmp, "%s?%.*s", subname, BSTR_P(end));
        }
    }
    if (!subname)
        subname = replace_idx_ext(tmp, bfilename);
    if (!subname)
        subname = talloc_asprintf(tmp, "%.*s.sub", BSTR_P(bfilename));

    MP_VERBOSE(demuxer, "Assuming associated .sub file: %s\n", subname);
    av_dict_set(d, "sub_name", subname, 0);
    talloc_free(tmp);
}
