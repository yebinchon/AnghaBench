
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;
 int AT_SYMLINK_FOLLOW ;
 int errno ;
 int linkat (int ,char const*,int ,char const*,int ) ;

__attribute__((used)) static int
hardlinkerr(char const *from, char const *to)
{
 int r = linkat(AT_FDCWD, from, AT_FDCWD, to, AT_SYMLINK_FOLLOW);

 return r == 0 ? 0 : errno;
}
