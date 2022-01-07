
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef scalar_t__ ssize_t ;


 int S_ISLNK (int ) ;
 int assert (int) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int memset (struct stat*,int ,int) ;

__attribute__((used)) static void test_lookup_pass(const char *pathname)
{
 struct stat st;
 ssize_t rv;

 memset(&st, 0, sizeof(struct stat));
 rv = lstat(pathname, &st);
 assert(rv == 0);
 assert(S_ISLNK(st.st_mode));
}
