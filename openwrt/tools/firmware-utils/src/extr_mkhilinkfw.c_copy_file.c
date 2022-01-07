
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int read (int,char*,int) ;
 int write (int,char*,int ) ;

__attribute__((used)) static void copy_file(int src, int dst)
{
 char buf[4096];
 ssize_t size;

 while ((size = read(src, buf, 4096)) > 0) {
        write(dst, buf, size);
    }
}
