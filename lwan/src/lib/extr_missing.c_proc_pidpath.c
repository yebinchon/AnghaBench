
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef scalar_t__ pid_t ;


 int AT_EXECFN ;
 int EACCES ;
 int EOVERFLOW ;
 int errno ;
 scalar_t__ getauxval (int ) ;
 scalar_t__ getpid () ;
 int memcpy (void*,char const*,size_t) ;
 size_t readlink (char*,void*,size_t) ;
 size_t strlen (char const*) ;

int proc_pidpath(pid_t pid, void *buffer, size_t buffersize)
{
    ssize_t path_len;

    if (getpid() != pid) {
        errno = EACCES;

        return -1;
    }
    path_len = readlink("/proc/self/exe", buffer, buffersize);
    if (path_len < 0)
        return -1;

    if (path_len < (ssize_t)buffersize) {
        ((char *)buffer)[path_len] = '\0';

        return 0;
    }

    errno = EOVERFLOW;
    return -1;
}
