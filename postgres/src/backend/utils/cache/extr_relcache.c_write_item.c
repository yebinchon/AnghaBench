
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int len ;
typedef int Size ;
typedef int FILE ;


 int FATAL ;
 int elog (int ,char*) ;
 int fwrite (void const*,int,int,int *) ;

__attribute__((used)) static void
write_item(const void *data, Size len, FILE *fp)
{
 if (fwrite(&len, 1, sizeof(len), fp) != sizeof(len))
  elog(FATAL, "could not write init file");
 if (fwrite(data, 1, len, fp) != len)
  elog(FATAL, "could not write init file");
}
