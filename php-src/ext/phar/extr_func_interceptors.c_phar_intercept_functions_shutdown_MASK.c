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
typedef  int /*<<< orphan*/  zend_function ;
typedef  int /*<<< orphan*/  PHAR_G ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_exists ; 
 int /*<<< orphan*/  file_get_contents ; 
 int /*<<< orphan*/  fileatime ; 
 int /*<<< orphan*/  filectime ; 
 int /*<<< orphan*/  filegroup ; 
 int /*<<< orphan*/  fileinode ; 
 int /*<<< orphan*/  filemtime ; 
 int /*<<< orphan*/  fileowner ; 
 int /*<<< orphan*/  fileperms ; 
 int /*<<< orphan*/  filesize ; 
 int /*<<< orphan*/  filetype ; 
 int /*<<< orphan*/  fopen ; 
 int /*<<< orphan*/  is_dir ; 
 int /*<<< orphan*/  is_executable ; 
 int /*<<< orphan*/  is_file ; 
 int /*<<< orphan*/  is_readable ; 
 int /*<<< orphan*/  is_writable ; 
 int /*<<< orphan*/  lstat ; 
 int /*<<< orphan*/  opendir ; 
 int /*<<< orphan*/  readfile ; 
 int /*<<< orphan*/  stat ; 

void FUNC1(void)
{
	zend_function *orig;

	FUNC0(fopen);
	FUNC0(file_get_contents);
	FUNC0(is_file);
	FUNC0(is_dir);
	FUNC0(opendir);
	FUNC0(file_exists);
	FUNC0(fileperms);
	FUNC0(fileinode);
	FUNC0(filesize);
	FUNC0(fileowner);
	FUNC0(filegroup);
	FUNC0(fileatime);
	FUNC0(filemtime);
	FUNC0(filectime);
	FUNC0(filetype);
	FUNC0(is_writable);
	FUNC0(is_readable);
	FUNC0(is_executable);
	FUNC0(lstat);
	FUNC0(stat);
	FUNC0(readfile);
	PHAR_G(intercepted) = 0;
}