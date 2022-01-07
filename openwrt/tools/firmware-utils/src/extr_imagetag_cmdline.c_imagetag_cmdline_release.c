
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gengetopt_args_info {int pad_orig; int reserved2_orig; int reserved2_arg; int inactive_orig; int inactive_arg; int second_image_flag_orig; int second_image_flag_arg; int rsa_signature_orig; int rsa_signature_arg; int info2_orig; int info2_arg; int altinfo_orig; int altinfo_arg; int info1_orig; int info1_arg; int layoutver_orig; int layoutver_arg; int entry_orig; int entry_arg; int load_addr_orig; int load_addr_arg; int block_size_orig; int block_size_arg; int signature2_orig; int signature2_arg; int signature_orig; int signature_arg; int tag_version_orig; int tag_version_arg; int image_offset_orig; int image_offset_arg; int flash_start_orig; int flash_start_arg; int chipid_orig; int chipid_arg; int boardid_orig; int boardid_arg; int cfe_orig; int cfe_arg; int output_orig; int output_arg; int rootfs_orig; int rootfs_arg; int kernel_orig; int kernel_arg; } ;


 int clear_given (struct gengetopt_args_info*) ;
 int free_string_field (int *) ;

__attribute__((used)) static void
imagetag_cmdline_release (struct gengetopt_args_info *args_info)
{

  free_string_field (&(args_info->kernel_arg));
  free_string_field (&(args_info->kernel_orig));
  free_string_field (&(args_info->rootfs_arg));
  free_string_field (&(args_info->rootfs_orig));
  free_string_field (&(args_info->output_arg));
  free_string_field (&(args_info->output_orig));
  free_string_field (&(args_info->cfe_arg));
  free_string_field (&(args_info->cfe_orig));
  free_string_field (&(args_info->boardid_arg));
  free_string_field (&(args_info->boardid_orig));
  free_string_field (&(args_info->chipid_arg));
  free_string_field (&(args_info->chipid_orig));
  free_string_field (&(args_info->flash_start_arg));
  free_string_field (&(args_info->flash_start_orig));
  free_string_field (&(args_info->image_offset_arg));
  free_string_field (&(args_info->image_offset_orig));
  free_string_field (&(args_info->tag_version_arg));
  free_string_field (&(args_info->tag_version_orig));
  free_string_field (&(args_info->signature_arg));
  free_string_field (&(args_info->signature_orig));
  free_string_field (&(args_info->signature2_arg));
  free_string_field (&(args_info->signature2_orig));
  free_string_field (&(args_info->block_size_arg));
  free_string_field (&(args_info->block_size_orig));
  free_string_field (&(args_info->load_addr_arg));
  free_string_field (&(args_info->load_addr_orig));
  free_string_field (&(args_info->entry_arg));
  free_string_field (&(args_info->entry_orig));
  free_string_field (&(args_info->layoutver_arg));
  free_string_field (&(args_info->layoutver_orig));
  free_string_field (&(args_info->info1_arg));
  free_string_field (&(args_info->info1_orig));
  free_string_field (&(args_info->altinfo_arg));
  free_string_field (&(args_info->altinfo_orig));
  free_string_field (&(args_info->info2_arg));
  free_string_field (&(args_info->info2_orig));
  free_string_field (&(args_info->rsa_signature_arg));
  free_string_field (&(args_info->rsa_signature_orig));
  free_string_field (&(args_info->second_image_flag_arg));
  free_string_field (&(args_info->second_image_flag_orig));
  free_string_field (&(args_info->inactive_arg));
  free_string_field (&(args_info->inactive_orig));
  free_string_field (&(args_info->reserved2_arg));
  free_string_field (&(args_info->reserved2_orig));
  free_string_field (&(args_info->pad_orig));



  clear_given (args_info);
}
