
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ extent; int gc_count; int mutex; int n_writers; } ;
typedef TYPE_1__ pgssSharedState ;
typedef scalar_t__ Size ;


 int CloseTransientFile (int) ;
 int LOG ;
 int O_CREAT ;
 int O_RDWR ;
 int OpenTransientFile (int ,int) ;
 int PGSS_TEXT_FILE ;
 int PG_BINARY ;
 int SEEK_SET ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 scalar_t__ pgss ;
 int write (int,char const*,int) ;

__attribute__((used)) static bool
qtext_store(const char *query, int query_len,
   Size *query_offset, int *gc_count)
{
 Size off;
 int fd;





 {
  volatile pgssSharedState *s = (volatile pgssSharedState *) pgss;

  SpinLockAcquire(&s->mutex);
  off = s->extent;
  s->extent += query_len + 1;
  s->n_writers++;
  if (gc_count)
   *gc_count = s->gc_count;
  SpinLockRelease(&s->mutex);
 }

 *query_offset = off;


 fd = OpenTransientFile(PGSS_TEXT_FILE, O_RDWR | O_CREAT | PG_BINARY);
 if (fd < 0)
  goto error;

 if (lseek(fd, off, SEEK_SET) != off)
  goto error;

 if (write(fd, query, query_len) != query_len)
  goto error;
 if (write(fd, "\0", 1) != 1)
  goto error;

 CloseTransientFile(fd);


 {
  volatile pgssSharedState *s = (volatile pgssSharedState *) pgss;

  SpinLockAcquire(&s->mutex);
  s->n_writers--;
  SpinLockRelease(&s->mutex);
 }

 return 1;

error:
 ereport(LOG,
   (errcode_for_file_access(),
    errmsg("could not write file \"%s\": %m",
     PGSS_TEXT_FILE)));

 if (fd >= 0)
  CloseTransientFile(fd);


 {
  volatile pgssSharedState *s = (volatile pgssSharedState *) pgss;

  SpinLockAcquire(&s->mutex);
  s->n_writers--;
  SpinLockRelease(&s->mutex);
 }

 return 0;
}
