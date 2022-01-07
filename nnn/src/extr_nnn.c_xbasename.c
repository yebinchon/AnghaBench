
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;


 int strlen (char*) ;
 char* xmemrchr (int *,char,int ) ;

__attribute__((used)) static char *xbasename(char *path)
{
 char *base = xmemrchr((uchar *)path, '/', strlen(path));

 return base ? base + 1 : path;
}
