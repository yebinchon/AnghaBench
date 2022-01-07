
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* time_t ;
struct TYPE_8__ {int st_mode; int st_nlink; int st_rdev; int st_dev; int st_blksize; int st_blocks; scalar_t__ st_ino; void* st_ctime; void* st_atime; void* st_mtime; int st_size; } ;
struct TYPE_9__ {TYPE_1__ sb; } ;
typedef TYPE_2__ php_stream_statbuf ;
struct TYPE_10__ {int mode; int fsize; } ;
typedef TYPE_3__ php_stream_memory_data ;
struct TYPE_11__ {scalar_t__ abstract; } ;
typedef TYPE_4__ php_stream ;


 int S_IFREG ;
 int TEMP_STREAM_READONLY ;
 int assert (int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int php_stream_memory_stat(php_stream *stream, php_stream_statbuf *ssb)
{
 time_t timestamp = 0;
 php_stream_memory_data *ms = (php_stream_memory_data*)stream->abstract;
 assert(ms != ((void*)0));

 memset(ssb, 0, sizeof(php_stream_statbuf));


 ssb->sb.st_mode = ms->mode & TEMP_STREAM_READONLY ? 0444 : 0666;

 ssb->sb.st_size = ms->fsize;
 ssb->sb.st_mode |= S_IFREG;
 ssb->sb.st_mtime = timestamp;
 ssb->sb.st_atime = timestamp;
 ssb->sb.st_ctime = timestamp;
 ssb->sb.st_nlink = 1;
 ssb->sb.st_rdev = -1;

 ssb->sb.st_dev = 0xC;

 ssb->sb.st_ino = 0;


 ssb->sb.st_blksize = -1;
 ssb->sb.st_blocks = -1;


 return 0;
}
