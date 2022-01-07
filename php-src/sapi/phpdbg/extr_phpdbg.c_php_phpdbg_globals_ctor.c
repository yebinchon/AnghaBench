
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * mem; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ active; } ;
struct TYPE_6__ {scalar_t__ num; } ;
struct TYPE_9__ {int last_was_newline; int socket_fd; int socket_server_fd; scalar_t__ last_line; int * cur_command; int * stdin_file; int eol; int swd; int sigio_watcher_thread; int * oplog_list; int * sigsegv_bailout; TYPE_3__ sigsafe_mem; scalar_t__ input_buflen; TYPE_2__ err_buf; scalar_t__ req_id; scalar_t__ unclean_eval; int * sapi_name_ptr; TYPE_1__ frame; int * io; int * oplog; int flags; scalar_t__ bp_count; scalar_t__ in_execution; scalar_t__ vmret; int * ops; int * buffer; scalar_t__ exec_len; int * exec; int lines; int ** colors; int ** prompt; } ;
typedef TYPE_4__ zend_phpdbg_globals ;
struct win32_sigio_watcher_data {int dummy; } ;


 int INVALID_HANDLE_VALUE ;
 int PHPDBG_DEFAULT_FLAGS ;
 int PHPDBG_EOL_LF ;
 int memset (int *,int ,int) ;
 int phpdbg_get_terminal_height () ;

__attribute__((used)) static inline void php_phpdbg_globals_ctor(zend_phpdbg_globals *pg)
{
 pg->prompt[0] = ((void*)0);
 pg->prompt[1] = ((void*)0);

 pg->colors[0] = ((void*)0);
 pg->colors[1] = ((void*)0);
 pg->colors[2] = ((void*)0);

 pg->lines = phpdbg_get_terminal_height();
 pg->exec = ((void*)0);
 pg->exec_len = 0;
 pg->buffer = ((void*)0);
 pg->last_was_newline = 1;
 pg->ops = ((void*)0);
 pg->vmret = 0;
 pg->in_execution = 0;
 pg->bp_count = 0;
 pg->flags = PHPDBG_DEFAULT_FLAGS;
 pg->oplog = ((void*)0);
 memset(pg->io, 0, sizeof(pg->io));
 pg->frame.num = 0;
 pg->sapi_name_ptr = ((void*)0);
 pg->socket_fd = -1;
 pg->socket_server_fd = -1;
 pg->unclean_eval = 0;

 pg->req_id = 0;
 pg->err_buf.active = 0;
 pg->err_buf.type = 0;

 pg->input_buflen = 0;
 pg->sigsafe_mem.mem = ((void*)0);
 pg->sigsegv_bailout = ((void*)0);

 pg->oplog_list = ((void*)0);






 pg->eol = PHPDBG_EOL_LF;

 pg->stdin_file = ((void*)0);

 pg->cur_command = ((void*)0);
 pg->last_line = 0;
}
