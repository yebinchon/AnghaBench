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
typedef  int i64 ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TIMER_ELAPSED ; 
 int /*<<< orphan*/  TIMER_END ; 
 int /*<<< orphan*/  TIMER_START ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,void const*,int,int) ; 
 scalar_t__ FUNC5 (int,void const*,int,int) ; 
 int FUNC6 (int,void const*,int) ; 

__attribute__((used)) static int FUNC7(
  int fd,                         /* File descriptor to write to */
  i64 iOff,                       /* File offset to begin writing at */
  const void *pBuf,               /* Copy data from this buffer to the file */
  int nBuf,                       /* Size of buffer pBuf in bytes */
  int *piErrno                    /* OUT: Error number if error occurs */
){
  int rc = 0;                     /* Value returned by system call */

  FUNC2( nBuf==(nBuf&0x1ffff) );
  FUNC2( fd>2 );
  FUNC2( piErrno!=0 );
  nBuf &= 0x1ffff;
  TIMER_START;

#if defined(USE_PREAD)
  do{ rc = (int)osPwrite(fd, pBuf, nBuf, iOff); }while( rc<0 && errno==EINTR );
#elif defined(USE_PREAD64)
  do{ rc = (int)osPwrite64(fd, pBuf, nBuf, iOff);}while( rc<0 && errno==EINTR);
#else
  do{
    i64 iSeek = FUNC3(fd, iOff, SEEK_SET);
    FUNC1( iSeek = -1 );
    if( iSeek<0 ){
      rc = -1;
      break;
    }
    rc = FUNC6(fd, pBuf, nBuf);
  }while( rc<0 && errno==EINTR );
#endif

  TIMER_END;
  FUNC0(("WRITE   %-3d %5d %7lld %llu\n", fd, rc, iOff, TIMER_ELAPSED));

  if( rc<0 ) *piErrno = errno;
  return rc;
}