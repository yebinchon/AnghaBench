
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int len; } ;


 int ASSERT (int) ;
 char const* BSTR (struct buffer*) ;
 char const* PATH_SEPARATOR_STR ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,char const*,char const*,char const*) ;
 int check_file_access (int const,char const*,int const,char const*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int strlen (char const*) ;

__attribute__((used)) static bool
check_file_access_chroot(const char *chroot, const int type, const char *file, const int mode, const char *opt)
{
    bool ret = 0;


    if (!file)
    {
        return 0;
    }


    if (chroot)
    {
        struct gc_arena gc = gc_new();
        struct buffer chroot_file;
        int len = 0;


        len = strlen(chroot) + strlen(PATH_SEPARATOR_STR) + strlen(file) + 1;
        chroot_file = alloc_buf_gc(len, &gc);
        buf_printf(&chroot_file, "%s%s%s", chroot, PATH_SEPARATOR_STR, file);
        ASSERT(chroot_file.len > 0);

        ret = check_file_access(type, BSTR(&chroot_file), mode, opt);
        gc_free(&gc);
    }
    else
    {

        ret = check_file_access(type, file, mode, opt);
    }
    return ret;
}
