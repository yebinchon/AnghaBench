
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dbg; int srcpath; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
struct TYPE_10__ {char* filename; int line_max; int line_min; } ;
typedef TYPE_2__ listcmd_parser_state ;
typedef int dbgcmd_state ;


 int DBGST_PROMPT ;
 int listcmd_parser_state_free (int *,TYPE_2__*) ;
 TYPE_2__* listcmd_parser_state_new (int *) ;
 char* mrb_debug_get_source (int *,TYPE_1__*,int ,char*) ;
 int mrb_debug_list (int *,int ,char*,int ,int ) ;
 int mrb_free (int *,char*) ;
 scalar_t__ parse_listcmd_args (int *,TYPE_1__*,TYPE_2__*) ;

dbgcmd_state
dbgcmd_list(mrb_state *mrb, mrdb_state *mrdb)
{
  char *filename;
  listcmd_parser_state *st = listcmd_parser_state_new(mrb);

  if (parse_listcmd_args(mrb, mrdb, st)) {
    if ((filename = mrb_debug_get_source(mrb, mrdb, mrdb->srcpath, st->filename)) == ((void*)0)) {
      filename = st->filename;
    }
    mrb_debug_list(mrb, mrdb->dbg, filename, st->line_min, st->line_max);

    if (filename != ((void*)0) && filename != st->filename) {
      mrb_free(mrb, filename);
    }
    listcmd_parser_state_free(mrb, st);
  }

  return DBGST_PROMPT;
}
