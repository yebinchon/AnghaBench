
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int CSzFile ;


 int File_Open (int *,char const*,int) ;

WRes OutFile_Open(CSzFile *p, const char *name) { return File_Open(p, name, 1); }
