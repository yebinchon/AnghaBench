
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int szChunk; scalar_t__ mmapSizeMax; int mmapSize; int zPath; int h; } ;
typedef TYPE_1__ unixFile ;
struct stat {int st_size; int st_blksize; } ;
typedef int i64 ;


 int EINTR ;
 int EINVAL ;
 int SQLITE_IOERR_FSTAT ;
 int SQLITE_IOERR_TRUNCATE ;
 int SQLITE_IOERR_WRITE ;
 int SQLITE_OK ;
 int assert (int) ;
 int errno ;
 int osFallocate (int ,int,int) ;
 scalar_t__ osFstat (int ,struct stat*) ;
 scalar_t__ robust_ftruncate (int ,int) ;
 int seekAndWrite (TYPE_1__*,int,char*,int) ;
 int storeLastErrno (TYPE_1__*,int ) ;
 int unixLogError (int ,char*,int ) ;
 int unixMapfile (TYPE_1__*,int) ;

__attribute__((used)) static int fcntlSizeHint(unixFile *pFile, i64 nByte){
  if( pFile->szChunk>0 ){
    i64 nSize;
    struct stat buf;

    if( osFstat(pFile->h, &buf) ){
      return SQLITE_IOERR_FSTAT;
    }

    nSize = ((nByte+pFile->szChunk-1) / pFile->szChunk) * pFile->szChunk;
    if( nSize>(i64)buf.st_size ){
      int nBlk = buf.st_blksize;
      int nWrite = 0;
      i64 iWrite;

      iWrite = (buf.st_size/nBlk)*nBlk + nBlk - 1;
      assert( iWrite>=buf.st_size );
      assert( ((iWrite+1)%nBlk)==0 );
      for( ; iWrite<nSize+nBlk-1; iWrite+=nBlk ){
        if( iWrite>=nSize ) iWrite = nSize - 1;
        nWrite = seekAndWrite(pFile, iWrite, "", 1);
        if( nWrite!=1 ) return SQLITE_IOERR_WRITE;
      }

    }
  }
  return SQLITE_OK;
}
