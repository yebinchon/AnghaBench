
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FONScontext ;
typedef int FILE ;


 int FONS_INVALID ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int fonsAddFontMem (int *,char const*,unsigned char*,int,int) ;
 int * fopen (char const*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int free (unsigned char*) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ ftell (int *) ;
 scalar_t__ malloc (int) ;

int fonsAddFont(FONScontext* stash, const char* name, const char* path)
{
 FILE* fp = 0;
 int dataSize = 0;
 unsigned char* data = ((void*)0);


 fp = fopen(path, "rb");
 if (fp == ((void*)0)) goto error;
 fseek(fp,0,SEEK_END);
 dataSize = (int)ftell(fp);
 fseek(fp,0,SEEK_SET);
 data = (unsigned char*)malloc(dataSize);
 if (data == ((void*)0)) goto error;
 fread(data, 1, dataSize, fp);
 fclose(fp);
 fp = 0;

 return fonsAddFontMem(stash, name, data, dataSize, 1);

error:
 if (data) free(data);
 if (fp) fclose(fp);
 return FONS_INVALID;
}
