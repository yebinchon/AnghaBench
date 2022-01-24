#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gengetopt_args_info {int /*<<< orphan*/  pad_orig; int /*<<< orphan*/  reserved2_orig; int /*<<< orphan*/  reserved2_arg; int /*<<< orphan*/  inactive_orig; int /*<<< orphan*/  inactive_arg; int /*<<< orphan*/  second_image_flag_orig; int /*<<< orphan*/  second_image_flag_arg; int /*<<< orphan*/  rsa_signature_orig; int /*<<< orphan*/  rsa_signature_arg; int /*<<< orphan*/  info2_orig; int /*<<< orphan*/  info2_arg; int /*<<< orphan*/  altinfo_orig; int /*<<< orphan*/  altinfo_arg; int /*<<< orphan*/  info1_orig; int /*<<< orphan*/  info1_arg; int /*<<< orphan*/  layoutver_orig; int /*<<< orphan*/  layoutver_arg; int /*<<< orphan*/  entry_orig; int /*<<< orphan*/  entry_arg; int /*<<< orphan*/  load_addr_orig; int /*<<< orphan*/  load_addr_arg; int /*<<< orphan*/  block_size_orig; int /*<<< orphan*/  block_size_arg; int /*<<< orphan*/  signature2_orig; int /*<<< orphan*/  signature2_arg; int /*<<< orphan*/  signature_orig; int /*<<< orphan*/  signature_arg; int /*<<< orphan*/  tag_version_orig; int /*<<< orphan*/  tag_version_arg; int /*<<< orphan*/  image_offset_orig; int /*<<< orphan*/  image_offset_arg; int /*<<< orphan*/  flash_start_orig; int /*<<< orphan*/  flash_start_arg; int /*<<< orphan*/  chipid_orig; int /*<<< orphan*/  chipid_arg; int /*<<< orphan*/  boardid_orig; int /*<<< orphan*/  boardid_arg; int /*<<< orphan*/  cfe_orig; int /*<<< orphan*/  cfe_arg; int /*<<< orphan*/  output_orig; int /*<<< orphan*/  output_arg; int /*<<< orphan*/  rootfs_orig; int /*<<< orphan*/  rootfs_arg; int /*<<< orphan*/  kernel_orig; int /*<<< orphan*/  kernel_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gengetopt_args_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (struct gengetopt_args_info *args_info)
{

  FUNC1 (&(args_info->kernel_arg));
  FUNC1 (&(args_info->kernel_orig));
  FUNC1 (&(args_info->rootfs_arg));
  FUNC1 (&(args_info->rootfs_orig));
  FUNC1 (&(args_info->output_arg));
  FUNC1 (&(args_info->output_orig));
  FUNC1 (&(args_info->cfe_arg));
  FUNC1 (&(args_info->cfe_orig));
  FUNC1 (&(args_info->boardid_arg));
  FUNC1 (&(args_info->boardid_orig));
  FUNC1 (&(args_info->chipid_arg));
  FUNC1 (&(args_info->chipid_orig));
  FUNC1 (&(args_info->flash_start_arg));
  FUNC1 (&(args_info->flash_start_orig));
  FUNC1 (&(args_info->image_offset_arg));
  FUNC1 (&(args_info->image_offset_orig));
  FUNC1 (&(args_info->tag_version_arg));
  FUNC1 (&(args_info->tag_version_orig));
  FUNC1 (&(args_info->signature_arg));
  FUNC1 (&(args_info->signature_orig));
  FUNC1 (&(args_info->signature2_arg));
  FUNC1 (&(args_info->signature2_orig));
  FUNC1 (&(args_info->block_size_arg));
  FUNC1 (&(args_info->block_size_orig));
  FUNC1 (&(args_info->load_addr_arg));
  FUNC1 (&(args_info->load_addr_orig));
  FUNC1 (&(args_info->entry_arg));
  FUNC1 (&(args_info->entry_orig));
  FUNC1 (&(args_info->layoutver_arg));
  FUNC1 (&(args_info->layoutver_orig));
  FUNC1 (&(args_info->info1_arg));
  FUNC1 (&(args_info->info1_orig));
  FUNC1 (&(args_info->altinfo_arg));
  FUNC1 (&(args_info->altinfo_orig));
  FUNC1 (&(args_info->info2_arg));
  FUNC1 (&(args_info->info2_orig));
  FUNC1 (&(args_info->rsa_signature_arg));
  FUNC1 (&(args_info->rsa_signature_orig));
  FUNC1 (&(args_info->second_image_flag_arg));
  FUNC1 (&(args_info->second_image_flag_orig));
  FUNC1 (&(args_info->inactive_arg));
  FUNC1 (&(args_info->inactive_orig));
  FUNC1 (&(args_info->reserved2_arg));
  FUNC1 (&(args_info->reserved2_orig));
  FUNC1 (&(args_info->pad_orig));
  
  

  FUNC0 (args_info);
}