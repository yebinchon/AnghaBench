
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;


 int PGTYPEStimestamp_defmt_asc (char*,char*,int *) ;

int
dtcvfmtasc(char *inbuf, char *fmtstr, timestamp * dtvalue)
{
 return PGTYPEStimestamp_defmt_asc(inbuf, fmtstr, dtvalue);
}
