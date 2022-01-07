
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_block {int padc; scalar_t__ type; int align; int * file_name; } ;


 scalar_t__ BLOCK_TYPE_BOOTEXT ;
 scalar_t__ BLOCK_TYPE_RAW ;
 int ERR (char*,...) ;
 int MAX_ARG_COUNT ;
 int MAX_ARG_LEN ;
 scalar_t__ MAX_NUM_BLOCKS ;
 struct fw_block* blocks ;
 struct fw_block* bootext_block ;
 scalar_t__ is_empty_arg (char*) ;
 scalar_t__ num_blocks ;
 int parse_arg (char*,char*,char**) ;
 scalar_t__ str2u32 (char*,int *) ;
 int * strdup (char*) ;

int
parse_opt_block(char ch, char *arg)
{
 char buf[MAX_ARG_LEN];
 char *argv[MAX_ARG_COUNT];
 int argc;
 char *p;
 struct fw_block *block;
 int i;

 if ( num_blocks >= MAX_NUM_BLOCKS ) {
  ERR("too many blocks specified");
  return -1;
 }

 block = &blocks[num_blocks++];


 block->padc = 0xFF;

 switch(ch) {
 case 'b':
  if (bootext_block) {
   ERR("only one boot extension block allowed");
   break;
  }
  block->type = BLOCK_TYPE_BOOTEXT;
  bootext_block = block;
  break;
 case 'r':
  block->type = BLOCK_TYPE_RAW;
  break;
 }

 argc = parse_arg(arg, buf, argv);

 i = 0;
 p = argv[i++];
 if (is_empty_arg(p)) {
  ERR("no file specified in %s", arg);
  return -1;
 } else {
  block->file_name = strdup(p);
  if (block->file_name == ((void*)0)) {
   ERR("not enough memory");
   return -1;
  }
 }

 if (block->type == BLOCK_TYPE_BOOTEXT)
  return 0;

 p = argv[i++];
 if (!is_empty_arg(p)) {
  if (str2u32(p, &block->align) != 0) {
   ERR("invalid block align in %s", arg);
   return -1;
  }
 }

 return 0;
}
