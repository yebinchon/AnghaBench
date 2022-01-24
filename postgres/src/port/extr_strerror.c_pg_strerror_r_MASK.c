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
 char* FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,int) ; 
 char* FUNC4 (int,char*,size_t) ; 

char *
FUNC5(int errnum, char *buf, size_t buflen)
{
	char	   *str;

	/* If it's a Windows Winsock error, that needs special handling */
#ifdef WIN32
	/* Winsock error code range, per WinError.h */
	if (errnum >= 10000 && errnum <= 11999)
		return win32_socket_strerror(errnum, buf, buflen);
#endif

	/* Try the platform's strerror_r(), or maybe just strerror() */
	str = FUNC2(errnum, buf, buflen);

	/*
	 * Some strerror()s return an empty string for out-of-range errno.  This
	 * is ANSI C spec compliant, but not exactly useful.  Also, we may get
	 * back strings of question marks if libc cannot transcode the message to
	 * the codeset specified by LC_CTYPE.  If we get nothing useful, first try
	 * get_errno_symbol(), and if that fails, print the numeric errno.
	 */
	if (str == NULL || *str == '\0' || *str == '?')
		str = FUNC1(errnum);

	if (str == NULL)
	{
		FUNC3(buf, buflen, FUNC0("operating system error %d"), errnum);
		str = buf;
	}

	return str;
}