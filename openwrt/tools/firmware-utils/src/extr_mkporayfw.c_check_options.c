
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct fw_header {int dummy; } ;
struct TYPE_10__ {int * layout_id; int hw_id; } ;
struct TYPE_9__ {int file_size; int * file_name; } ;
struct TYPE_8__ {int fw_max_len; } ;


 int ERR (char*,...) ;
 TYPE_5__* board ;
 int * board_id ;
 TYPE_5__* find_board (int *) ;
 TYPE_5__* find_board_by_hwid (int ) ;
 TYPE_1__* find_layout (int *) ;
 TYPE_2__ firmware_info ;
 int firmware_len ;
 int get_file_stat (TYPE_2__*) ;
 int hw_id ;
 scalar_t__ inspect ;
 TYPE_1__* layout ;
 int * layout_id ;
 int * ofname ;
 int * opt_hw_id ;
 int strtoul (int *,int *,int ) ;

__attribute__((used)) static int check_options(void)
{
 int ret;

 if (firmware_info.file_name == ((void*)0)) {
  ERR("no firmware image specified");
  return -1;
 }

 ret = get_file_stat(&firmware_info);
 if (ret)
  return ret;

 if (inspect)
  return 0;

 if (board_id == ((void*)0) && opt_hw_id == ((void*)0)) {
  ERR("either board or hardware id must be specified");
  return -1;
 }

 if (board_id) {
  board = find_board(board_id);
  if (board == ((void*)0)) {
   ERR("unknown/unsupported board id \"%s\"", board_id);
   return -1;
  }
  if (layout_id == ((void*)0)) {
   layout_id = board->layout_id;
  }
  hw_id = board->hw_id;
 } else {
  hw_id = strtoul(opt_hw_id, ((void*)0), 0);
  board = find_board_by_hwid(hw_id);
  if (layout_id == ((void*)0)) {
   layout_id = board->layout_id;
  }
 }

 layout = find_layout(layout_id);
 if (layout == ((void*)0)) {
  ERR("unknown flash layout \"%s\"", layout_id);
  return -1;
 }

 firmware_len = firmware_info.file_size;

 if (firmware_info.file_size >
  layout->fw_max_len - sizeof (struct fw_header)) {
  ERR("firmware image is too big");
  return -1;
 }

 if (ofname == ((void*)0)) {
  ERR("no output file specified");
  return -1;
 }
 return 0;
}
