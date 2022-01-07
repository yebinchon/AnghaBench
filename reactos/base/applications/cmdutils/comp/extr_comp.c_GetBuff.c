
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBYTE ;
typedef int INT ;
typedef int FILE ;
typedef int BYTE ;


 int STRBUF ;
 int fread (int ,int,int ,int *) ;

INT GetBuff(PBYTE buff, FILE* in)
{
    return fread(buff, sizeof(BYTE), STRBUF, in);
}
