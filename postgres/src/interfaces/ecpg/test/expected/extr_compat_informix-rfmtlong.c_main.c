
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECPGdebug (int,int ) ;
 int fmtlong (int,char*) ;
 int stderr ;

int
main(void)
{
 ECPGdebug(1, stderr);

 fmtlong(-8494493, "-<<<<,<<<,<<<,<<<");
 fmtlong(-8494493, "################");
 fmtlong(-8494493, "+++$$$$$$$$$$$$$.##");
 fmtlong(-8494493, "(&,&&&,&&&,&&&.)");
 fmtlong(-8494493, "<<<<,<<<,<<<,<<<");
 fmtlong(-8494493, "$************.**");
 fmtlong(-8494493, "---$************.**");
 fmtlong(-8494493, "+-+################");
 fmtlong(-8494493, "abc: ################+-+");
 fmtlong(-8494493, "+<<<<,<<<,<<<,<<<");

 return 0;
}
