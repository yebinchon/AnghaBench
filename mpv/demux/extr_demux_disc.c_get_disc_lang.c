
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_lang_req {scalar_t__ type; int id; scalar_t__* name; } ;
struct stream {int dummy; } ;
struct sh_stream {scalar_t__ type; int demuxer_id; int lang; } ;


 int STREAM_CTRL_GET_LANG ;
 scalar_t__ STREAM_SUB ;
 int stream_control (struct stream*,int ,struct stream_lang_req*) ;
 int talloc_strdup (struct sh_stream*,scalar_t__*) ;

__attribute__((used)) static void get_disc_lang(struct stream *stream, struct sh_stream *sh, bool dvd)
{
    struct stream_lang_req req = {.type = sh->type, .id = sh->demuxer_id};
    if (dvd && sh->type == STREAM_SUB)
        req.id = req.id & 0x1F;
    stream_control(stream, STREAM_CTRL_GET_LANG, &req);
    if (req.name[0])
        sh->lang = talloc_strdup(sh, req.name);
}
