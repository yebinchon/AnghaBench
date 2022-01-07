
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;
typedef int LZW_STATIC_DATA ;


 int LWZReadByte_ (int *,int *,char,int,int*) ;
 scalar_t__ VERBOSE ;
 int printf (char*,char,int,int) ;

__attribute__((used)) static int
LWZReadByte(gdIOCtx *fd, LZW_STATIC_DATA *sd, char flag, int input_code_size, int *ZeroDataBlockP)
{
 int rv;

 rv = LWZReadByte_(fd, sd, flag, input_code_size, ZeroDataBlockP);
 if (VERBOSE) printf("[LWZReadByte(,%d,%d) returning %d]\n",flag,input_code_size,rv);
 return(rv);
}
