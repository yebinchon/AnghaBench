
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ListCell ;


 scalar_t__ lfirst (int const*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
compareWalFileNames(const ListCell *a, const ListCell *b)
{
 char *fna = (char *) lfirst(a);
 char *fnb = (char *) lfirst(b);

 return strcmp(fna + 8, fnb + 8);
}
