
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_7__ {int (* handler ) (int ,int) ;scalar_t__ name; } ;
struct TYPE_6__ {int blocksize; int block; int num; } ;
typedef TYPE_1__ RCore ;


 int algolist (int) ;
 int eprintf (char*) ;
 TYPE_4__* hash_handlers ;
 int r_core_block_read (TYPE_1__*) ;
 int r_core_block_size (TYPE_1__*,int) ;
 int r_num_math (int ,char const*) ;
 int r_str_ccmp (scalar_t__,char const*,char) ;
 char* r_str_trim_ro (char const*) ;
 int sscanf (char const*,char*,char*) ;
 char* strchr (char const*,char) ;
 int stub1 (int ,int) ;

__attribute__((used)) static bool cmd_print_ph(RCore *core, const char *input) {
 char algo[128];
 ut32 osize = 0, len = core->blocksize;
 const char *ptr;
 int pos = 0, handled_cmd = 0;

 if (!*input || *input == '?') {
  algolist (1);
  return 1;
 }
 if (*input == '=') {
  algolist (0);
  return 1;
 }
 input = r_str_trim_ro (input);
 ptr = strchr (input, ' ');
 sscanf (input, "%31s", algo);
 if (ptr && ptr[1]) {
  int nlen = r_num_math (core->num, ptr + 1);
  if (nlen > 0) {
   len = nlen;
  }
  osize = core->blocksize;
  if (nlen > core->blocksize) {
   r_core_block_size (core, nlen);
   if (nlen != core->blocksize) {
    eprintf ("Invalid block size\n");
    r_core_block_size (core, osize);
    return 0;
   }
   r_core_block_read (core);
  }
 } else if (!ptr || !*(ptr + 1)) {
  osize = len;
 }

 while (osize > 0 && hash_handlers[pos].name) {
  if (!r_str_ccmp (hash_handlers[pos].name, input, ' ')) {
   hash_handlers[pos].handler (core->block, len);
   handled_cmd = 1;
   break;
  }
  pos++;
 }
 if (osize) {
  r_core_block_size (core, osize);
 }
 return handled_cmd;
}
