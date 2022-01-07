
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pgoff_t ;
typedef int FILE ;


 int SEEK_SET ;
 scalar_t__ fseeko (int *,scalar_t__,int ) ;
 scalar_t__ ftello (int *) ;

bool
checkSeek(FILE *fp)
{
 pgoff_t tpos;






 if (sizeof(pgoff_t) > sizeof(long))
  return 0;



 tpos = ftello(fp);
 if (tpos < 0)
  return 0;






 if (fseeko(fp, tpos, SEEK_SET) != 0)
  return 0;

 return 1;
}
