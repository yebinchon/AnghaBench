
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; scalar_t__ lastErrno; } ;
typedef TYPE_1__ unixFile ;
typedef int sqlite3_int64 ;
typedef int i64 ;


 scalar_t__ EINTR ;
 int OSTRACE (char*) ;
 int SEEK_SET ;
 int SimulateIOError (int) ;
 int TIMER_ELAPSED ;
 int TIMER_END ;
 int TIMER_START ;
 int assert (int) ;
 scalar_t__ errno ;
 int lseek (int ,int,int ) ;
 int osPread (int ,void*,int,int) ;
 int osPread64 (int ,void*,int,int) ;
 int osRead (int ,void*,int) ;

__attribute__((used)) static int seekAndRead(unixFile *id, sqlite3_int64 offset, void *pBuf, int cnt){
  int got;
  int prior = 0;

  i64 newOffset;

  TIMER_START;
  assert( cnt==(cnt&0x1ffff) );
  cnt &= 0x1ffff;
  do{







    newOffset = lseek(id->h, offset, SEEK_SET);
    SimulateIOError( newOffset-- );
    if( newOffset!=offset ){
      if( newOffset == -1 ){
        ((unixFile*)id)->lastErrno = errno;
      }else{
        ((unixFile*)id)->lastErrno = 0;
      }
      return -1;
    }
    got = osRead(id->h, pBuf, cnt);

    if( got==cnt ) break;
    if( got<0 ){
      if( errno==EINTR ){ got = 1; continue; }
      prior = 0;
      ((unixFile*)id)->lastErrno = errno;
      break;
    }else if( got>0 ){
      cnt -= got;
      offset += got;
      prior += got;
      pBuf = (void*)(got + (char*)pBuf);
    }
  }while( got>0 );
  TIMER_END;
  OSTRACE(("READ    %-3d %5d %7lld %llu\n",
            id->h, got+prior, offset-prior, TIMER_ELAPSED));
  return got+prior;
}
