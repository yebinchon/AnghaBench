
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned long long st_size; long st_atime; long st_mtime; scalar_t__ st_ino; } ;
typedef int mtime ;
typedef int atime ;


 int localtime (long*) ;
 unsigned long long page_size ;
 int printf (char*,char const*,long,...) ;
 int strftime (char*,int,char*,int ) ;
 long time (int *) ;

__attribute__((used)) static void show_file(const char *name, const struct stat *st)
{
 unsigned long long size = st->st_size;
 char atime[64], mtime[64];
 long now = time(((void*)0));

 printf("%s\tInode: %u\tSize: %llu (%llu pages)\n",
   name, (unsigned)st->st_ino,
   size, (size + page_size - 1) / page_size);

 strftime(atime, sizeof(atime), "%c", localtime(&st->st_atime));
 strftime(mtime, sizeof(mtime), "%c", localtime(&st->st_mtime));

 printf("Modify: %s (%ld seconds ago)\nAccess: %s (%ld seconds ago)\n",
   mtime, now - st->st_mtime,
   atime, now - st->st_atime);
}
