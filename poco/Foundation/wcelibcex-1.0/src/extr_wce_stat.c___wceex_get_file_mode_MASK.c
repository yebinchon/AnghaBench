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
 unsigned int FILE_ATTRIBUTE_DIRECTORY ; 
 unsigned int FILE_ATTRIBUTE_READONLY ; 
 scalar_t__ FUNC0 (char const) ; 
 unsigned short S_IEXEC ; 
 unsigned short S_IFDIR ; 
 unsigned short S_IFREG ; 
 unsigned short S_IREAD ; 
 unsigned short S_IWRITE ; 
 int __DOSMODE_MASK ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static unsigned short FUNC3(const char* filename, int attr)
{
    unsigned short file_mode;
    unsigned mode;
    const char *p;

    mode = attr & __DOSMODE_MASK;

    /* XXX - mloskot - remove it */
    if ((p = filename)[1] == ':')
        p += 2;

    /* Check to see if this is a directory. */
    file_mode = (unsigned short)
        (((FUNC0(*p) && !p[1]) || (mode & FILE_ATTRIBUTE_DIRECTORY) || !*p)
        ? S_IFDIR | S_IEXEC : S_IFREG);

    /* Check if attribute byte does have read-only bit, otherwise it is read-write. */
    file_mode |= (mode & FILE_ATTRIBUTE_READONLY) ? S_IREAD : (S_IREAD | S_IWRITE);

    /* See if file appears to be executable by the extension. */
    if ((p = FUNC2(filename, '.')))
    {
        if (!FUNC1(p, ".exe") ||
            !FUNC1(p, ".cmd") ||
            !FUNC1(p, ".bat") ||
            !FUNC1(p, ".com"))
            file_mode |= S_IEXEC;
    }

    /* Propagate user read/write/execute bits to group/other fields. */
    file_mode |= (file_mode & 0700) >> 3;
    file_mode |= (file_mode & 0700) >> 6;

    return(file_mode);
}