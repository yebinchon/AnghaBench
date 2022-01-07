
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex2nr (int) ;
 int* regparse ;

__attribute__((used)) static int
getoctchrs()
{
    int nr = 0;
    int c;
    int i;

    for (i = 0; i < 3 && nr < 040; ++i)
    {
 c = regparse[0];
 if (c < '0' || c > '7')
     break;
 nr <<= 3;
 nr |= hex2nr(c);
 ++regparse;
    }

    if (i == 0)
 return -1;
    return nr;
}
