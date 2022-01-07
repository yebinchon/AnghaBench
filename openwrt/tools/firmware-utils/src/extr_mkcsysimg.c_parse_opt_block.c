
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csys_header {int dummy; } ;
struct csys_block {int need_file; int padc; int size_hdr; int addr_set; int align_set; int align; int addr; int * file_name; int type; int size_csum; } ;


 int BLOCK_TYPE_BOOT ;
 int BLOCK_TYPE_CODE ;
 int BLOCK_TYPE_CONF ;
 int BLOCK_TYPE_WEBP ;
 int BLOCK_TYPE_XTRA ;
 int CSUM_SIZE_16 ;
 int CSUM_SIZE_8 ;
 int ERR (char*,...) ;
 int ERR_FATAL ;
 int MAX_ARG_COUNT ;
 int MAX_ARG_LEN ;
 size_t MAX_NUM_BLOCKS ;
 int WARN (char*) ;
 struct csys_block* blocks ;
 struct csys_block* boot_block ;
 struct csys_block* code_block ;
 struct csys_block* conf_block ;
 int is_empty_arg (char*) ;
 size_t num_blocks ;
 int parse_arg (char*,char*,char**) ;
 scalar_t__ str2u32 (char*,int *) ;
 scalar_t__ str2u8 (char*,int*) ;
 int * strdup (char*) ;
 struct csys_block* webp_block ;

int
parse_opt_block(char ch, char *arg)
{
 char buf[MAX_ARG_LEN];
 char *argv[MAX_ARG_COUNT];
 int argc;
 char *p;
 struct csys_block *block;
 int i;

 if ( num_blocks > MAX_NUM_BLOCKS ) {
  ERR("too many blocks specified");
  return ERR_FATAL;
 }

 block = &blocks[num_blocks];


 block->need_file = 1;
 block->padc = 0xFF;

 switch (ch) {
 case 'b':
  if (boot_block) {
   WARN("only one boot block allowed");
   break;
  }
  block->type = BLOCK_TYPE_BOOT;
  boot_block = block;
  break;
 case 'c':
  if (conf_block) {
   WARN("only one config block allowed");
   break;
  }
  block->type = BLOCK_TYPE_CONF;
  conf_block = block;
  break;
 case 'w':
  if (webp_block) {
   WARN("only one web block allowed");
   break;
  }
  block->type = BLOCK_TYPE_WEBP;
  block->size_hdr = sizeof(struct csys_header);
  block->size_csum = CSUM_SIZE_8;
  block->need_file = 0;
  webp_block = block;
  break;
 case 'r':
  if (code_block) {
   WARN("only one runtime block allowed");
   break;
  }
  block->type = BLOCK_TYPE_CODE;
  block->size_hdr = sizeof(struct csys_header);
  block->size_csum = CSUM_SIZE_16;
  code_block = block;
  break;
 case 'x':
  block->type = BLOCK_TYPE_XTRA;
  break;
 default:
  ERR("unknown block type \"%c\"", ch);
  return ERR_FATAL;
 }

 argc = parse_arg(arg, buf, argv);

 i = 0;
 p = argv[i++];
 if (!is_empty_arg(p)) {
  block->file_name = strdup(p);
  if (block->file_name == ((void*)0)) {
   ERR("not enough memory");
   return ERR_FATAL;
  }
 } else if (block->need_file){
  ERR("no file specified in %s", arg);
  return ERR_FATAL;
 }

 if (block->size_hdr) {
  p = argv[i++];
  if (!is_empty_arg(p)) {
   if (str2u32(p, &block->addr) != 0) {
    ERR("invalid start address in %s", arg);
    return ERR_FATAL;
   }
   block->addr_set = 1;
  }
 }

 p = argv[i++];
 if (!is_empty_arg(p)) {
  if (str2u32(p, &block->align) != 0) {
   ERR("invalid alignment value in %s", arg);
   return ERR_FATAL;
  }
  block->align_set = 1;
 }

 p = argv[i++];
 if (!is_empty_arg(p) && (str2u8(p, &block->padc) != 0)) {
  ERR("invalid paddig character in %s", arg);
  return ERR_FATAL;
 }

 num_blocks++;

 return 0;
}
