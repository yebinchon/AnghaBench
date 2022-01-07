
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* zout; char* zout_start; char* zout_end; int z_expandable; } ;
typedef TYPE_1__ stbi__zbuf ;


 scalar_t__ STBI_REALLOC (char*,int) ;
 int stbi__err (char*,char*) ;

__attribute__((used)) static int stbi__zexpand(stbi__zbuf *z, char *zout, int n)
{
   char *q;
   int cur, limit;
   z->zout = zout;
   if (!z->z_expandable) return stbi__err("output buffer limit","Corrupt PNG");
   cur = (int) (z->zout - z->zout_start);
   limit = (int) (z->zout_end - z->zout_start);
   while (cur + n > limit)
      limit *= 2;
   q = (char *) STBI_REALLOC(z->zout_start, limit);
   if (q == ((void*)0)) return stbi__err("outofmem", "Out of memory");
   z->zout_start = q;
   z->zout = q + cur;
   z->zout_end = q + limit;
   return 1;
}
