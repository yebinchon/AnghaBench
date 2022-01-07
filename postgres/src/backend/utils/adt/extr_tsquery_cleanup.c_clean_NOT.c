
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueryItem ;
typedef int NODE ;


 int clean_NOT_intree (int *) ;
 int * maketree (int *) ;
 int * plaintree (int ,int*) ;

QueryItem *
clean_NOT(QueryItem *ptr, int *len)
{
 NODE *root = maketree(ptr);

 return plaintree(clean_NOT_intree(root), len);
}
