#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* bit32u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char*,char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (void*,char) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  cur_line ; 
 void* FUNC5 (char*,int) ; 
 int s1s2s3_total ; 
 int FUNC6 (char*) ; 

int FUNC7(char *pSrecLine)
{
    char *scp,ch;
    int  itmp,count,dat;
    bit32u adr;
    static bit32u RecordCounter=0;

    cur_line++;
    scp=pSrecLine;
  
    if (*pSrecLine!='S')
      return(FUNC1("Not an Srecord file",scp));
    pSrecLine++;
    if (FUNC6(pSrecLine)<4)
      return(FUNC1("Srecord too short",scp));
  
    ch=*pSrecLine++;
  
    count=FUNC5(pSrecLine,2);
  
    pSrecLine += 2;
  
  //  if(debug)
  //        printf("count %d, strlen(pSrecLine) = %d, pSrecLine =[%s]\n", count, strlen(pSrecLine), pSrecLine);
     RecordCounter++;
     FUNC0(RecordCounter);
  
    if ((count*2) != FUNC6(pSrecLine)) return(FUNC1("Count field larger than record",scp));
  
    if (!FUNC4(pSrecLine, count)) return(FUNC1("Bad Checksum",scp));
  
    switch(ch)
    {
        case '0': if (count<3) return(FUNC1("Invalid Srecord count field",scp));
                  itmp=FUNC5(pSrecLine,4); pSrecLine+=4; count-=2;
                  if (itmp) return(FUNC1("Srecord 1 address not zero",scp));
        break;
        case '1': if (count<3) return(FUNC1("Invalid Srecord count field",scp));
                  return(FUNC1("Srecord Not valid for MIPS",scp));
        break;
        case '2': if (count<4) return(FUNC1("Invalid Srecord count field",scp));
                  return(FUNC1("Srecord Not valid for MIPS",scp));
        break;
        case '3': if (count<5) return(FUNC1("Invalid Srecord count field",scp));
                  adr=FUNC5(pSrecLine,8); pSrecLine+=8; count-=4;
                  count--;
                  while(count)
                  {
                    dat=FUNC5(pSrecLine,2); pSrecLine+=2; count--;
                    FUNC2(adr, (char) (dat & 0xFF));
                    adr++;
                  }
                  s1s2s3_total++;
        break;
        case '4': return(FUNC1("Invalid Srecord type",scp));
        break;
        case '5': if (count<3) return(FUNC1("Invalid Srecord count field",scp));
                  itmp=FUNC5(pSrecLine,4); pSrecLine+=4; count-=2;
                  if ((itmp|=s1s2s3_total)) return(FUNC1("Incorrect number of S3 Record processed",scp));
        break;
        case '6': return(FUNC1("Invalid Srecord type",scp));
        break;
        case '7': // PROGRAM START
                  if (count<5) return(FUNC1("Invalid Srecord count field",scp));
                  adr=FUNC5(pSrecLine,8); pSrecLine+=8; count-=4;
                  if (count!=1) return(FUNC1("Invalid Srecord count field",scp));
                  FUNC3(adr);
        break;
        case '8': if (count<4) return(FUNC1("Invalid Srecord count field",scp));
                  return(FUNC1("Srecord Not valid for MIPS",scp));
        break;
        case '9': if (count<3) return(FUNC1("Invalid Srecord count field",scp));
                  return(FUNC1("Srecord Not valid for MIPS",scp));
        break;
        default:
        break;
    }
    return(TRUE);
}