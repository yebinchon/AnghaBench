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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int,char const*) ; 
 void* FUNC2 (char*,int) ; 

void *FUNC3(const char *name, int type, const char *parent_name, char **newpath)
{
    char *path;
    void *fp;

    if (!(path = FUNC1(name, type, parent_name))) return NULL;
    fp = FUNC2(path, type);

    if (fp)
    {
        if (newpath) *newpath = path;
        else FUNC0( path );
        return fp;
    }
    FUNC0( path );
    return NULL;
}