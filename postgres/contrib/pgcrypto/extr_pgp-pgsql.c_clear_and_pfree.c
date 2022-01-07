
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int VARSIZE_ANY (int *) ;
 int pfree (int *) ;
 int px_memset (int *,int ,int ) ;

__attribute__((used)) static void
clear_and_pfree(text *p)
{
 px_memset(p, 0, VARSIZE_ANY(p));
 pfree(p);
}
