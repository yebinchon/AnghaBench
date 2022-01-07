
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_saveDictHC (int *,char*,int) ;
 int LZ4_streamHC ;

__attribute__((used)) static int local_LZ4_saveDictHC(const char* in, char* out, int inSize)
{
    (void)in;
    return LZ4_saveDictHC(&LZ4_streamHC, out, inSize);
}
