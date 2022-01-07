
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GT_SOCK ;
 int cpio_mkgeneric_line (char const*,int ) ;

__attribute__((used)) static int cpio_mksock_line(const char *line)
{
 return cpio_mkgeneric_line(line, GT_SOCK);
}
