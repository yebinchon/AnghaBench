#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* orig_stat; void* orig_readfile; void* orig_lstat; void* orig_is_executable; void* orig_is_readable; void* orig_is_writable; void* orig_filetype; void* orig_filectime; void* orig_filemtime; void* orig_fileatime; void* orig_filegroup; void* orig_fileowner; void* orig_filesize; void* orig_fileinode; void* orig_fileperms; void* orig_file_exists; void* orig_opendir; void* orig_is_dir; void* orig_is_link; void* orig_is_file; void* orig_file_get_contents; void* orig_fopen; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  orig_file_exists ; 
 int /*<<< orphan*/  orig_file_get_contents ; 
 int /*<<< orphan*/  orig_fileatime ; 
 int /*<<< orphan*/  orig_filectime ; 
 int /*<<< orphan*/  orig_filegroup ; 
 int /*<<< orphan*/  orig_fileinode ; 
 int /*<<< orphan*/  orig_filemtime ; 
 int /*<<< orphan*/  orig_fileowner ; 
 int /*<<< orphan*/  orig_fileperms ; 
 int /*<<< orphan*/  orig_filesize ; 
 int /*<<< orphan*/  orig_filetype ; 
 int /*<<< orphan*/  orig_fopen ; 
 int /*<<< orphan*/  orig_is_dir ; 
 int /*<<< orphan*/  orig_is_executable ; 
 int /*<<< orphan*/  orig_is_file ; 
 int /*<<< orphan*/  orig_is_link ; 
 int /*<<< orphan*/  orig_is_readable ; 
 int /*<<< orphan*/  orig_is_writable ; 
 int /*<<< orphan*/  orig_lstat ; 
 int /*<<< orphan*/  orig_opendir ; 
 int /*<<< orphan*/  orig_readfile ; 
 int /*<<< orphan*/  orig_stat ; 
 TYPE_1__ phar_orig_functions ; 

void FUNC1(void) /* {{{ */
{
	phar_orig_functions.orig_fopen             = FUNC0(orig_fopen);
	phar_orig_functions.orig_file_get_contents = FUNC0(orig_file_get_contents);
	phar_orig_functions.orig_is_file           = FUNC0(orig_is_file);
	phar_orig_functions.orig_is_link           = FUNC0(orig_is_link);
	phar_orig_functions.orig_is_dir            = FUNC0(orig_is_dir);
	phar_orig_functions.orig_opendir           = FUNC0(orig_opendir);
	phar_orig_functions.orig_file_exists       = FUNC0(orig_file_exists);
	phar_orig_functions.orig_fileperms         = FUNC0(orig_fileperms);
	phar_orig_functions.orig_fileinode         = FUNC0(orig_fileinode);
	phar_orig_functions.orig_filesize          = FUNC0(orig_filesize);
	phar_orig_functions.orig_fileowner         = FUNC0(orig_fileowner);
	phar_orig_functions.orig_filegroup         = FUNC0(orig_filegroup);
	phar_orig_functions.orig_fileatime         = FUNC0(orig_fileatime);
	phar_orig_functions.orig_filemtime         = FUNC0(orig_filemtime);
	phar_orig_functions.orig_filectime         = FUNC0(orig_filectime);
	phar_orig_functions.orig_filetype          = FUNC0(orig_filetype);
	phar_orig_functions.orig_is_writable       = FUNC0(orig_is_writable);
	phar_orig_functions.orig_is_readable       = FUNC0(orig_is_readable);
	phar_orig_functions.orig_is_executable     = FUNC0(orig_is_executable);
	phar_orig_functions.orig_lstat             = FUNC0(orig_lstat);
	phar_orig_functions.orig_readfile          = FUNC0(orig_readfile);
	phar_orig_functions.orig_stat              = FUNC0(orig_stat);
}