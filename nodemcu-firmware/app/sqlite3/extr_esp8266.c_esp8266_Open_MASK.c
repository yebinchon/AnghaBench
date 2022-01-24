#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  int /*<<< orphan*/  sqlite3_file ;
typedef  int /*<<< orphan*/  filecache_t ;
struct TYPE_5__ {int /*<<< orphan*/ * pMethods; } ;
struct TYPE_6__ {char* name; char* fd; TYPE_1__ base; struct TYPE_6__* cache; } ;
typedef  TYPE_2__ esp8266_file ;

/* Variables and functions */
 int ESP8266_DEFAULT_MAXNAMESIZE ; 
 int SQLITE_CANTOPEN ; 
 int SQLITE_IOERR ; 
 int SQLITE_NOMEM ; 
 scalar_t__ SQLITE_OK ; 
 int SQLITE_OPEN_MAIN_JOURNAL ; 
 int SQLITE_OPEN_READONLY ; 
 int SQLITE_OPEN_READWRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 int /*<<< orphan*/  esp8266IoMethods ; 
 int /*<<< orphan*/  esp8266MemMethods ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6( sqlite3_vfs * vfs, const char * path, sqlite3_file * file, int flags, int * outflags )
{
	int rc;
	char *mode = "r";
	esp8266_file *p = (esp8266_file*) file;

	if ( path == NULL ) return SQLITE_IOERR;
	if( flags&SQLITE_OPEN_READONLY )  mode = "r";
	if( flags&SQLITE_OPEN_READWRITE || flags&SQLITE_OPEN_MAIN_JOURNAL ) {
		int result;
		if (SQLITE_OK != FUNC1(vfs, path, flags, &result))
			return SQLITE_CANTOPEN;

		if (result == 1)
			mode = "r+";
		else
			mode = "w+";
	}

	FUNC0("esp8266_Open: 1o %s %s\n", path, mode);
	FUNC2 (p, 0, sizeof(esp8266_file));

        FUNC4 (p->name, path, ESP8266_DEFAULT_MAXNAMESIZE);
	p->name[ESP8266_DEFAULT_MAXNAMESIZE-1] = '\0';

	if( flags&SQLITE_OPEN_MAIN_JOURNAL ) {
		p->fd = 0;
		p->cache = FUNC3(sizeof (filecache_t));
		if (! p->cache )
			return SQLITE_NOMEM;
		FUNC2 (p->cache, 0, sizeof(filecache_t));

		p->base.pMethods = &esp8266MemMethods;
		FUNC0("esp8266_Open: 2o %s %d MEM OK\n", p->name, p->fd);
		return SQLITE_OK;
	}

	p->fd = FUNC5 (path, mode);
	if ( p->fd <= 0 ) {
		return SQLITE_CANTOPEN;
	}

	p->base.pMethods = &esp8266IoMethods;
	FUNC0("esp8266_Open: 2o %s %d OK\n", p->name, p->fd);
	return SQLITE_OK;
}