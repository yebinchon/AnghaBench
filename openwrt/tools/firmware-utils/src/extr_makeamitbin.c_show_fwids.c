
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void show_fwids(void)
{
 printf("List of known firmware identifiers:\n");
 printf("Manufacturer\t\tProduct\t\tIdentifier\n");
 printf("=====================================================\n");
 printf("Conceptronic\t\tCHD2WLANU\tLLM_RUS001\n");
 printf("Pearl\t\t\tPE6643\t\tQueen\n");
 printf("Micronica\t\tMGB100\t\tQueen\n");
 printf("LevelOne\t\tWAP-0007\tDDC_RUS001\n");
 printf("SMC\t\t\tWAPS-G\t\tSMC_RUS001\n");
 printf("OvisLink (AirLive)\tWMU-6\t\tOVS_RUS001\n");
 printf("SafeCom SWSAPUR-5\tFMW\t\tSafeco_RPS001\n");
 exit(1);
}
