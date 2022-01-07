
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef void* BYTE ;



__attribute__((used)) static void st_word (BYTE* ptr, WORD val)
{
    *ptr++ = (BYTE)val; val >>= 8;
    *ptr++ = (BYTE)val;
}
