
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int convert_sourcefiles_in (char*,int ,char*,char*) ;
 int outputdir ;

__attribute__((used)) static void
convert_sourcefiles(void)
{
 convert_sourcefiles_in("input", outputdir, "sql", "sql");
 convert_sourcefiles_in("output", outputdir, "expected", "out");
}
