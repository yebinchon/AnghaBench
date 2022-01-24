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
typedef  int /*<<< orphan*/  uint32_t ;
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct stat*) ; 

uint32_t FUNC7 ( char* filename )
{
	struct stat buf;
	FUNC6 ( filename,&buf );
	char* filebuffer = FUNC5 ( buf.st_size+10 );
	FILE* fd = FUNC1 ( filename,"r" );
	FUNC2 ( filebuffer, 1, buf.st_size,fd );
	FUNC0 ( fd );
	uint32_t crc = FUNC4 ( filebuffer,buf.st_size );
	FUNC3 ( filebuffer );
	return crc;
}