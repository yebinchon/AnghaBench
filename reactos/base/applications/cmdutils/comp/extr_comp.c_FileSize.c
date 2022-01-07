
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int FILE ;


 int SEEK_END ;
 scalar_t__ fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int rewind (int *) ;

INT FileSize(FILE* fd)
{
    INT result = -1;
    if (fseek(fd, 0, SEEK_END) == 0 && (result = ftell(fd)) != -1)
    {

        rewind(fd);
    }
    return result;
}
