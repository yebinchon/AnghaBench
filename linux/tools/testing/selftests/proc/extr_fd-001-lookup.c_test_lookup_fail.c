
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ENOENT ;
 int assert (int) ;
 scalar_t__ errno ;
 int lstat (char const*,struct stat*) ;

__attribute__((used)) static void test_lookup_fail(const char *pathname)
{
 struct stat st;
 ssize_t rv;

 rv = lstat(pathname, &st);
 assert(rv == -1 && errno == ENOENT);
}
