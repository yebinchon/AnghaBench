
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ebml_parse_ctx {int talloc_ctx; int member_0; } ;
struct ebml_attachments {int n_attached_file; struct ebml_attached_file* attached_file; int member_0; } ;
struct TYPE_7__ {int len; int start; } ;
struct ebml_attached_file {char* file_name; char* file_mime_type; TYPE_1__ file_data; int n_file_data; } ;
typedef int stream_t ;
struct TYPE_8__ {int log; int * stream; } ;
typedef TYPE_2__ demuxer_t ;


 int MP_DBG (TYPE_2__*,char*,...) ;
 int MP_WARN (TYPE_2__*,char*) ;
 int demuxer_add_attachment (TYPE_2__*,char*,char*,int ,int ) ;
 int ebml_attachments_desc ;
 scalar_t__ ebml_read_element (int *,struct ebml_parse_ctx*,struct ebml_attachments*,int *) ;
 int talloc_free (int ) ;

__attribute__((used)) static int demux_mkv_read_attachments(demuxer_t *demuxer)
{
    stream_t *s = demuxer->stream;

    MP_DBG(demuxer, "Parsing attachments...\n");

    struct ebml_attachments attachments = {0};
    struct ebml_parse_ctx parse_ctx = {demuxer->log};
    if (ebml_read_element(s, &parse_ctx, &attachments,
                          &ebml_attachments_desc) < 0)
        return -1;

    for (int i = 0; i < attachments.n_attached_file; i++) {
        struct ebml_attached_file *attachment = &attachments.attached_file[i];
        if (!attachment->file_name || !attachment->file_mime_type
            || !attachment->n_file_data) {
            MP_WARN(demuxer, "Malformed attachment\n");
            continue;
        }
        char *name = attachment->file_name;
        char *mime = attachment->file_mime_type;
        demuxer_add_attachment(demuxer, name, mime, attachment->file_data.start,
                               attachment->file_data.len);
        MP_DBG(demuxer, "Attachment: %s, %s, %zu bytes\n",
               name, mime, attachment->file_data.len);
    }

    talloc_free(parse_ctx.talloc_ctx);
    return 0;
}
