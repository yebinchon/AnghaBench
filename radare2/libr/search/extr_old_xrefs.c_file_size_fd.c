
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int lseek (int,int ,int ) ;

__attribute__((used)) static ut32 file_size_fd(int fd)
{
 ut32 curr = lseek(fd, 0, SEEK_CUR);
 ut32 size = lseek(fd, 0, SEEK_END);
 lseek(fd, curr, SEEK_SET);

 return size;
}
