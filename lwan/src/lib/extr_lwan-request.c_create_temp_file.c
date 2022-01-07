
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int template ;
typedef int mode_t ;


 int ENOENT ;
 int EOVERFLOW ;
 scalar_t__ LIKELY (int) ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXCL ;
 int O_NOATIME ;
 int O_NOFOLLOW ;
 int O_RDWR ;
 int O_TMPFILE ;
 int PATH_MAX ;
 int S_IRUSR ;
 int S_IWUSR ;
 scalar_t__ UNLIKELY (int) ;
 int mkostemp (char*,int) ;
 int open (char*,int,int) ;
 int snprintf (char*,int,char*,char*) ;
 char* temp_dir ;
 int umask_for_tmpfile (int) ;
 int unlink (char*) ;

__attribute__((used)) static int create_temp_file(void)
{
    char template[PATH_MAX];
    mode_t prev_mask;
    int ret;

    if (UNLIKELY(!temp_dir))
        return -ENOENT;
    ret = snprintf(template, sizeof(template), "%s/lwanXXXXXX", temp_dir);
    if (UNLIKELY(ret < 0 || ret >= (int)sizeof(template)))
        return -EOVERFLOW;

    prev_mask = umask_for_tmpfile(S_IRUSR | S_IWUSR);
    ret = mkostemp(template, O_CLOEXEC);
    umask_for_tmpfile(prev_mask);

    if (LIKELY(ret >= 0))
        unlink(template);

    return ret;
}
