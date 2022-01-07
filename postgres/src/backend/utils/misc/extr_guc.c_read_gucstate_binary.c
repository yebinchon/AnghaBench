
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int ERROR ;
 int elog (int ,char*) ;
 int memcpy (void*,char*,int) ;

__attribute__((used)) static void
read_gucstate_binary(char **srcptr, char *srcend, void *dest, Size size)
{
 if (*srcptr + size > srcend)
  elog(ERROR, "incomplete GUC state");

 memcpy(dest, *srcptr, size);
 *srcptr += size;
}
