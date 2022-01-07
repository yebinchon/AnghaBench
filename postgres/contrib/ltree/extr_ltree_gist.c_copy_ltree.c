
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ltree ;


 int VARSIZE (int *) ;
 int memcpy (int *,int *,int ) ;
 scalar_t__ palloc0 (int ) ;

__attribute__((used)) static ltree *
copy_ltree(ltree *src)
{
 ltree *dst = (ltree *) palloc0(VARSIZE(src));

 memcpy(dst, src, VARSIZE(src));
 return dst;
}
