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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int IGNORE_URL_WIN ; 
 int REPORT_ERRORS ; 
 int STREAM_OPEN_FOR_INCLUDE ; 
 int USE_PATH ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static FILE *FUNC1(const char *filename, zend_string **opened_path)
{
	return FUNC0((char *)filename, "rb", USE_PATH|IGNORE_URL_WIN|REPORT_ERRORS|STREAM_OPEN_FOR_INCLUDE, opened_path);
}