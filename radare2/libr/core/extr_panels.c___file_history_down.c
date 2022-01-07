
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* io; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_9__ {char* data; scalar_t__ length; scalar_t__ index; } ;
struct TYPE_10__ {int file_hist_index; TYPE_2__ buffer; TYPE_5__* user; } ;
struct TYPE_8__ {int files; } ;
typedef int RList ;
typedef TYPE_3__ RLine ;
typedef TYPE_4__ RIODesc ;
typedef TYPE_5__ RCore ;


 scalar_t__ R_LINE_BUFSIZE ;
 int * r_id_storage_list (int ) ;
 int r_list_free (int *) ;
 TYPE_4__* r_list_get_n (int *,int) ;
 int r_list_length (int *) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,int ,scalar_t__) ;

int __file_history_down(RLine *line) {
 RCore *core = line->user;
 RList *files = r_id_storage_list (core->io->files);
 int num_files = r_list_length (files);
 if (line->file_hist_index <= 0 || line->file_hist_index > num_files) {
  return 0;
 }
 line->file_hist_index--;
 if (line->file_hist_index <= 0) {
  line->buffer.data[0] = '\0';
  line->buffer.index = line->buffer.length = 0;
  return 0;
 }
 RIODesc *desc = r_list_get_n (files, num_files - line->file_hist_index);
 if (desc) {
  strncpy (line->buffer.data, desc->name, R_LINE_BUFSIZE - 1);
  line->buffer.index = line->buffer.length = strlen (line->buffer.data);
 }
 r_list_free (files);
 return 1;
}
