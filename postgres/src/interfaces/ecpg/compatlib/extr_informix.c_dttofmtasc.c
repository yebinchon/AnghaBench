
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;


 int PGTYPEStimestamp_fmt_asc (int *,char*,int,char*) ;

int
dttofmtasc(timestamp * ts, char *output, int str_len, char *fmtstr)
{
 return PGTYPEStimestamp_fmt_asc(ts, output, str_len, fmtstr);
}
