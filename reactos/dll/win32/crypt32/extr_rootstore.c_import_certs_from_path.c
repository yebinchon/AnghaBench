
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int LPCSTR ;
typedef int HCERTSTORE ;
typedef scalar_t__ BOOL ;


 int ERR (char*,int ) ;
 scalar_t__ FALSE ;
 int O_RDONLY ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int TRACE (char*,int ,int ,scalar_t__) ;
 int WARN (char*,int ) ;
 int close (int) ;
 int debugstr_a (int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ import_certs_from_dir (int ,int ) ;
 scalar_t__ import_certs_from_file (int,int ) ;
 int open (int ,int ) ;

__attribute__((used)) static BOOL import_certs_from_path(LPCSTR path, HCERTSTORE store,
 BOOL allow_dir)
{
    BOOL ret = FALSE;
    int fd;

    TRACE("(%s, %p, %d)\n", debugstr_a(path), store, allow_dir);

    fd = open(path, O_RDONLY);
    if (fd != -1)
    {
        struct stat st;

        if (fstat(fd, &st) == 0)
        {
            if (S_ISREG(st.st_mode))
                ret = import_certs_from_file(fd, store);
            else if (S_ISDIR(st.st_mode))
            {
                if (allow_dir)
                    ret = import_certs_from_dir(path, store);
                else
                    WARN("%s is a directory and directories are disallowed\n",
                     debugstr_a(path));
            }
            else
                ERR("%s: invalid file type\n", path);
        }
        close(fd);
    }
    return ret;
}
