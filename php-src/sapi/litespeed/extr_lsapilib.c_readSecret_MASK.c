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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_secret ; 

__attribute__((used)) static int FUNC5( const char * pSecretFile )
{
    struct stat st;
    int fd = FUNC3( pSecretFile, O_RDONLY , 0600 );
    if ( fd == -1 )
    {
        FUNC2("LSAPI: failed to open secret file: %s!\n", pSecretFile );
        return -1;
    }
    if ( FUNC1( fd, &st ) == -1 )
    {
        FUNC2("LSAPI: failed to check state of file: %s!\n", pSecretFile );
        FUNC0( fd );
        return -1;
    }
/*
    if ( st.st_uid != s_uid )
    {
        lsapi_log("LSAPI: file owner check failure: %s!\n", pSecretFile );
        close( fd );
        return -1;
    }
*/
    if ( st.st_mode & 0077 )
    {
        FUNC2("LSAPI: file permission check failure: %s\n", pSecretFile );
        FUNC0( fd );
        return -1;
    }
    if ( FUNC4( fd, s_secret, 16 ) < 16 )
    {
        FUNC2("LSAPI: failed to read secret from secret file: %s\n", pSecretFile );
        FUNC0( fd );
        return -1;
    }
    FUNC0( fd );
    return 0;
}