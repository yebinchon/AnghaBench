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
struct stat {int dummy; } ;
struct _stat {int dummy; } ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 char NUL ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ VER_PLATFORM_WIN32_NT ; 
 int _MAX_PATH ; 
 int enc_codepage ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ g_PlatformId ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*,struct stat*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct _stat*) ; 

int
FUNC10(const char *name, struct stat *stp)
{
#ifdef FEAT_MBYTE
    /* WinNT and later can use _MAX_PATH wide characters for a pathname, which
     * means that the maximum pathname is _MAX_PATH * 3 bytes when 'enc' is
     * UTF-8. */
    char	buf[_MAX_PATH * 3 + 1];
#else
    char	buf[_MAX_PATH + 1];
#endif
    char	*p;

    FUNC7((char_u *)buf, (char_u *)name, sizeof(buf) - 1);
    p = buf + FUNC5(buf);
    if (p > buf)
	FUNC3(buf, p);

    /* Remove trailing '\\' except root path. */
    if (p > buf && (*p == '\\' || *p == '/') && p[-1] != ':')
	*p = NUL;

    if ((buf[0] == '\\' && buf[1] == '\\') || (buf[0] == '/' && buf[1] == '/'))
    {
	/* UNC root path must be followed by '\\'. */
	p = FUNC8(buf + 2, "\\/");
	if (p != NULL)
	{
	    p = FUNC8(p + 1, "\\/");
	    if (p == NULL)
		FUNC1(buf, "\\");
	}
    }
#ifdef FEAT_MBYTE
    if (enc_codepage >= 0 && (int)GetACP() != enc_codepage
# ifdef __BORLANDC__
	    /* Wide functions of Borland C 5.5 do not work on Windows 98. */
	    && g_PlatformId == VER_PLATFORM_WIN32_NT
# endif
       )
    {
	WCHAR	*wp = enc_to_utf16(buf, NULL);
	int	n;

	if (wp != NULL)
	{
	    n = wstat_symlink_aware(wp, (struct _stat *)stp);
	    vim_free(wp);
	    if (n >= 0 || g_PlatformId == VER_PLATFORM_WIN32_NT)
		return n;
	    /* Retry with non-wide function (for Windows 98). Can't use
	     * GetLastError() here and it's unclear what errno gets set to if
	     * the _wstat() fails for missing wide functions. */
	}
    }
#endif
    return FUNC4(buf, stp);
}