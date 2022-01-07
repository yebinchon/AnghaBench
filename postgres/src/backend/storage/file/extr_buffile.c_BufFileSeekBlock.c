
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int BufFile ;


 int BLCKSZ ;
 long BUFFILE_SEG_SIZE ;
 int BufFileSeek (int *,int,int,int ) ;
 int SEEK_SET ;

int
BufFileSeekBlock(BufFile *file, long blknum)
{
 return BufFileSeek(file,
        (int) (blknum / BUFFILE_SEG_SIZE),
        (off_t) (blknum % BUFFILE_SEG_SIZE) * BLCKSZ,
        SEEK_SET);
}
