
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gengetopt_args_info {scalar_t__ align_rootfs_flag; int * pad_orig; scalar_t__ kernel_file_has_header_flag; int * reserved2_orig; int * reserved2_arg; int * inactive_orig; void* inactive_arg; int * second_image_flag_orig; void* second_image_flag_arg; int * rsa_signature_orig; int * rsa_signature_arg; scalar_t__ root_first_flag; int * info2_orig; int * info2_arg; int * altinfo_orig; int * altinfo_arg; int * info1_orig; int * info1_arg; int * layoutver_orig; int * layoutver_arg; int * entry_orig; int * entry_arg; int * load_addr_orig; int * load_addr_arg; int * block_size_orig; void* block_size_arg; int * signature2_orig; void* signature2_arg; int * signature_orig; void* signature_arg; int * tag_version_orig; void* tag_version_arg; int * image_offset_orig; void* image_offset_arg; int * flash_start_orig; void* flash_start_arg; int * chipid_orig; int * chipid_arg; int * boardid_orig; int * boardid_arg; int * cfe_orig; int * cfe_arg; int * output_orig; int * output_arg; int * rootfs_orig; int * rootfs_arg; int * kernel_orig; int * kernel_arg; } ;


 int FIX_UNUSED (struct gengetopt_args_info*) ;
 void* gengetopt_strdup (char*) ;

__attribute__((used)) static
void clear_args (struct gengetopt_args_info *args_info)
{
  FIX_UNUSED (args_info);
  args_info->kernel_arg = ((void*)0);
  args_info->kernel_orig = ((void*)0);
  args_info->rootfs_arg = ((void*)0);
  args_info->rootfs_orig = ((void*)0);
  args_info->output_arg = ((void*)0);
  args_info->output_orig = ((void*)0);
  args_info->cfe_arg = ((void*)0);
  args_info->cfe_orig = ((void*)0);
  args_info->boardid_arg = ((void*)0);
  args_info->boardid_orig = ((void*)0);
  args_info->chipid_arg = ((void*)0);
  args_info->chipid_orig = ((void*)0);
  args_info->flash_start_arg = gengetopt_strdup ("0xBFC00000");
  args_info->flash_start_orig = ((void*)0);
  args_info->image_offset_arg = gengetopt_strdup ("0x10000");
  args_info->image_offset_orig = ((void*)0);
  args_info->tag_version_arg = gengetopt_strdup ("6");
  args_info->tag_version_orig = ((void*)0);
  args_info->signature_arg = gengetopt_strdup ("Broadcom Corporatio");
  args_info->signature_orig = ((void*)0);
  args_info->signature2_arg = gengetopt_strdup ("ver. 2.0");
  args_info->signature2_orig = ((void*)0);
  args_info->block_size_arg = gengetopt_strdup ("0x10000");
  args_info->block_size_orig = ((void*)0);
  args_info->load_addr_arg = ((void*)0);
  args_info->load_addr_orig = ((void*)0);
  args_info->entry_arg = ((void*)0);
  args_info->entry_orig = ((void*)0);
  args_info->layoutver_arg = ((void*)0);
  args_info->layoutver_orig = ((void*)0);
  args_info->info1_arg = ((void*)0);
  args_info->info1_orig = ((void*)0);
  args_info->altinfo_arg = ((void*)0);
  args_info->altinfo_orig = ((void*)0);
  args_info->info2_arg = ((void*)0);
  args_info->info2_orig = ((void*)0);
  args_info->root_first_flag = 0;
  args_info->rsa_signature_arg = ((void*)0);
  args_info->rsa_signature_orig = ((void*)0);
  args_info->second_image_flag_arg = gengetopt_strdup ("2");
  args_info->second_image_flag_orig = ((void*)0);
  args_info->inactive_arg = gengetopt_strdup ("2");
  args_info->inactive_orig = ((void*)0);
  args_info->reserved2_arg = ((void*)0);
  args_info->reserved2_orig = ((void*)0);
  args_info->kernel_file_has_header_flag = 0;
  args_info->pad_orig = ((void*)0);
  args_info->align_rootfs_flag = 0;

}
