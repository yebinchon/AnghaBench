
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;
typedef int CODE_STATIC_DATA ;


 int GetCode_ (int *,int *,int,int,int*) ;
 scalar_t__ VERBOSE ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static int
GetCode(gdIOCtx *fd, CODE_STATIC_DATA *scd, int code_size, int flag, int *ZeroDataBlockP)
{
 int rv;

 rv = GetCode_(fd, scd, code_size,flag, ZeroDataBlockP);
 if (VERBOSE) printf("[GetCode(,%d,%d) returning %d]\n",code_size,flag,rv);
 return(rv);
}
