
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int url; int muxer_settings; } ;
struct ffmpeg_data {TYPE_1__ config; TYPE_4__* output; } ;
struct dstr {int array; int member_0; } ;
struct TYPE_10__ {scalar_t__* filename; int pb; TYPE_2__* oformat; } ;
struct TYPE_9__ {int value; int key; } ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ AVOutputFormat ;
typedef TYPE_3__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVFMT_NOFILE ;
 int AVIO_FLAG_WRITE ;
 int AV_DICT_IGNORE_SUFFIX ;
 int LOG_INFO ;
 int LOG_WARNING ;
 scalar_t__ av_dict_count (int *) ;
 int av_dict_free (int **) ;
 TYPE_3__* av_dict_get (int *,char*,TYPE_3__*,int ) ;
 int av_dict_parse_string (int **,int ,char*,char*,int ) ;
 int av_err2str (int) ;
 int avformat_write_header (TYPE_4__*,int **) ;
 int avio_open2 (int *,int ,int ,int *,int **) ;
 int blog (int ,char*,int ) ;
 int dstr_catf (struct dstr*,char*,int ,int ) ;
 int dstr_free (struct dstr*) ;
 int ffmpeg_log_error (int ,struct ffmpeg_data*,char*,int ,int ) ;
 int strncpy (scalar_t__*,int ,int) ;

__attribute__((used)) static inline bool open_output_file(struct ffmpeg_data *data)
{
 AVOutputFormat *format = data->output->oformat;
 int ret;

 AVDictionary *dict = ((void*)0);
 if ((ret = av_dict_parse_string(&dict, data->config.muxer_settings, "=",
     " ", 0))) {
  ffmpeg_log_error(LOG_WARNING, data,
     "Failed to parse muxer settings: %s\n%s",
     av_err2str(ret), data->config.muxer_settings);

  av_dict_free(&dict);
  return 0;
 }

 if (av_dict_count(dict) > 0) {
  struct dstr str = {0};

  AVDictionaryEntry *entry = ((void*)0);
  while ((entry = av_dict_get(dict, "", entry,
         AV_DICT_IGNORE_SUFFIX)))
   dstr_catf(&str, "\n\t%s=%s", entry->key, entry->value);

  blog(LOG_INFO, "Using muxer settings: %s", str.array);
  dstr_free(&str);
 }

 if ((format->flags & AVFMT_NOFILE) == 0) {
  ret = avio_open2(&data->output->pb, data->config.url,
     AVIO_FLAG_WRITE, ((void*)0), &dict);
  if (ret < 0) {
   ffmpeg_log_error(LOG_WARNING, data,
      "Couldn't open '%s', %s",
      data->config.url, av_err2str(ret));
   av_dict_free(&dict);
   return 0;
  }
 }

 strncpy(data->output->filename, data->config.url,
  sizeof(data->output->filename));
 data->output->filename[sizeof(data->output->filename) - 1] = 0;

 ret = avformat_write_header(data->output, &dict);
 if (ret < 0) {
  ffmpeg_log_error(LOG_WARNING, data, "Error opening '%s': %s",
     data->config.url, av_err2str(ret));
  return 0;
 }

 if (av_dict_count(dict) > 0) {
  struct dstr str = {0};

  AVDictionaryEntry *entry = ((void*)0);
  while ((entry = av_dict_get(dict, "", entry,
         AV_DICT_IGNORE_SUFFIX)))
   dstr_catf(&str, "\n\t%s=%s", entry->key, entry->value);

  blog(LOG_INFO, "Invalid muxer settings: %s", str.array);
  dstr_free(&str);
 }

 av_dict_free(&dict);

 return 1;
}
