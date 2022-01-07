
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int BYTE ;



__attribute__((used)) static WORD ld_word (const BYTE* ptr)
{
    WORD rv;

    rv = ptr[1];
    rv = rv << 8 | ptr[0];
    return rv;
}
