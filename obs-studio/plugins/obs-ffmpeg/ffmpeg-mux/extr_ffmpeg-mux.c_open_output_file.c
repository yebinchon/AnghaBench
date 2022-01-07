
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* file; char* muxer_settings; } ;
struct ffmpeg_mux {TYPE_1__ params; TYPE_4__* output; } ;
struct TYPE_10__ {scalar_t__* filename; int pb; TYPE_2__* oformat; } ;
struct TYPE_9__ {char* key; char* value; } ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ AVOutputFormat ;
typedef TYPE_3__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVFMT_NOFILE ;
 int AVIO_FLAG_WRITE ;
 int AV_DICT_IGNORE_SUFFIX ;
 int FFM_ERROR ;
 int FFM_SUCCESS ;
 int FFM_UNSUPPORTED ;
 scalar_t__ av_dict_count (int *) ;
 int av_dict_free (int **) ;
 TYPE_3__* av_dict_get (int *,char*,TYPE_3__*,int ) ;
 int av_dict_parse_string (int **,char*,char*,char*,int ) ;
 char* av_err2str (int) ;
 int avformat_write_header (TYPE_4__*,int **) ;
 int avio_open (int *,char*,int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int printf (char*,...) ;
 int stderr ;
 int strncpy (scalar_t__*,char*,int) ;

__attribute__((used)) static inline int open_output_file(struct ffmpeg_mux *ffm)
{
 AVOutputFormat *format = ffm->output->oformat;
 int ret;

 if ((format->flags & AVFMT_NOFILE) == 0) {
  ret = avio_open(&ffm->output->pb, ffm->params.file,
    AVIO_FLAG_WRITE);
  if (ret < 0) {
   fprintf(stderr, "Couldn't open '%s', %s",
    ffm->params.file, av_err2str(ret));
   return FFM_ERROR;
  }
 }

 strncpy(ffm->output->filename, ffm->params.file,
  sizeof(ffm->output->filename));
 ffm->output->filename[sizeof(ffm->output->filename) - 1] = 0;

 AVDictionary *dict = ((void*)0);
 if ((ret = av_dict_parse_string(&dict, ffm->params.muxer_settings, "=",
     " ", 0))) {
  fprintf(stderr, "Failed to parse muxer settings: %s\n%s",
   av_err2str(ret), ffm->params.muxer_settings);

  av_dict_free(&dict);
 }

 if (av_dict_count(dict) > 0) {
  printf("Using muxer settings:");

  AVDictionaryEntry *entry = ((void*)0);
  while ((entry = av_dict_get(dict, "", entry,
         AV_DICT_IGNORE_SUFFIX)))
   printf("\n\t%s=%s", entry->key, entry->value);

  printf("\n");
 }

 ret = avformat_write_header(ffm->output, &dict);
 if (ret < 0) {
  fprintf(stderr, "Error opening '%s': %s", ffm->params.file,
   av_err2str(ret));

  av_dict_free(&dict);

  return ret == -22 ? FFM_UNSUPPORTED : FFM_ERROR;
 }

 av_dict_free(&dict);

 return FFM_SUCCESS;
}
