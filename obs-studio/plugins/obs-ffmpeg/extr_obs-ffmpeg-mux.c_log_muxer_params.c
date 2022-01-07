
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ffmpeg_muxer {int dummy; } ;
struct dstr {int array; int member_0; } ;
struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 scalar_t__ av_dict_count (int *) ;
 int av_dict_free (int **) ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int av_dict_parse_string (int **,char const*,char*,char*,int ) ;
 int av_err2str (int) ;
 int dstr_catf (struct dstr*,char*,int ,int ) ;
 int dstr_free (struct dstr*) ;
 int info (char*,int ) ;
 int warn (char*,int ,char const*) ;

__attribute__((used)) static void log_muxer_params(struct ffmpeg_muxer *stream, const char *settings)
{
 int ret;

 AVDictionary *dict = ((void*)0);
 if ((ret = av_dict_parse_string(&dict, settings, "=", " ", 0))) {
  warn("Failed to parse muxer settings: %s\n%s", av_err2str(ret),
       settings);

  av_dict_free(&dict);
  return;
 }

 if (av_dict_count(dict) > 0) {
  struct dstr str = {0};

  AVDictionaryEntry *entry = ((void*)0);
  while ((entry = av_dict_get(dict, "", entry,
         AV_DICT_IGNORE_SUFFIX)))
   dstr_catf(&str, "\n\t%s=%s", entry->key, entry->value);

  info("Using muxer settings:%s", str.array);
  dstr_free(&str);
 }

 av_dict_free(&dict);
}
