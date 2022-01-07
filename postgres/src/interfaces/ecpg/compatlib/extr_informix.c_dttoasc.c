
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;


 char* PGTYPEStimestamp_to_asc (int ) ;
 int free (char*) ;
 int strcpy (char*,char*) ;

int
dttoasc(timestamp * ts, char *output)
{
 char *asctime = PGTYPEStimestamp_to_asc(*ts);

 strcpy(output, asctime);
 free(asctime);
 return 0;
}
