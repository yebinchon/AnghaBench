
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* lineno_t ;


 char const* filename ;
 void* linenum ;
 char const* rfilename ;
 void* rlinenum ;

__attribute__((used)) static void
eats(char const *name, lineno_t num, char const *rname, lineno_t rnum)
{
 filename = name;
 linenum = num;
 rfilename = rname;
 rlinenum = rnum;
}
