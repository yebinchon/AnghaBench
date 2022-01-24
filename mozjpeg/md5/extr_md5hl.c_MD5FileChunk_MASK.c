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
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int BUFSIZ ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int errno ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 scalar_t__ FUNC6 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,int) ; 
 int FUNC8 (int,unsigned char*,scalar_t__) ; 

char *FUNC9(const char *filename, char *buf, off_t ofs, off_t len)
{
  unsigned char buffer[BUFSIZ];
  MD5_CTX ctx;
  struct stat stbuf;
  int f, i, e;
  off_t n;

  FUNC1(&ctx);
#if _WIN32
  f = _open(filename, O_RDONLY | O_BINARY);
#else
  f = FUNC7(filename, O_RDONLY);
#endif
  if (f < 0)
    return 0;
  if (FUNC5(f, &stbuf) < 0)
    return 0;
  if (ofs > stbuf.st_size)
    ofs = stbuf.st_size;
  if ((len == 0) || (len > stbuf.st_size - ofs))
    len = stbuf.st_size - ofs;
  if (FUNC6(f, ofs, SEEK_SET) < 0)
    return 0;
  n = len;
  i = 0;
  while (n > 0) {
    if (n > sizeof(buffer))
      i = FUNC8(f, buffer, sizeof(buffer));
    else
      i = FUNC8(f, buffer, n);
    if (i < 0)
      break;
    FUNC2(&ctx, buffer, i);
    n -= i;
  }
  e = errno;
  FUNC4(f);
  errno = e;
  if (i < 0)
    return 0;
  return (FUNC0(&ctx, buf));
}