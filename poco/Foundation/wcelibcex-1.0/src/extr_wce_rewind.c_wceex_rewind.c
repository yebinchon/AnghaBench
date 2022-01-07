
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int assert (int) ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int fseek (int *,long,int ) ;

void wceex_rewind(FILE * fp)
{
    int ret;





    ret = fseek(fp, 0L, SEEK_SET);

    assert(0 == ret);
    assert(0 == ferror(fp));
    assert(!feof(fp));
}
