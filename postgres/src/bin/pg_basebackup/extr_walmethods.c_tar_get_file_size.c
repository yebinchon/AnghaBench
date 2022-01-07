
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ENOSYS ;
 int errno ;
 int tar_clear_error () ;

__attribute__((used)) static ssize_t
tar_get_file_size(const char *pathname)
{
 tar_clear_error();


 errno = ENOSYS;
 return -1;
}
