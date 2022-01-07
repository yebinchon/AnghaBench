
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bit32u ;
typedef int FILE ;


 int AddressCurrent ;
 void* BigEndian ;
 void* FALSE ;
 void* RecStart ;
 void* TRUE ;
 int WaitDisplay () ;
 int binOut32 (int) ;
 int binRecEnd () ;
 int dumpfTell (char*,int) ;
 int * fOut ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ inputline ;
 int printf (char*,...) ;
 int readline (int *,char*,int) ;
 int srecLine (char*) ;
 scalar_t__ strlen (char*) ;

int srec2bin(int argc,char *argv[],int verbose)
{
    int i,rlen,sts;
    FILE *fp;
    char ac;
    char buff[256];
    bit32u TAG_BIG = 0xDEADBE42;
    bit32u TAG_LITTLE = 0xFEEDFA42;

    bit32u Tag;


    if(argc < 3)
    {
      printf("\nError: <srec2bin <srec input file> <bin output file>\n\n");
      return(0);
    }

    if (argc > 3) BigEndian=TRUE; else BigEndian=FALSE;

    if (BigEndian)
        Tag = TAG_BIG;
    else
        Tag = TAG_LITTLE;

    if (verbose)
       printf("\nEndian: %s, Tag is 0x%8X\n",(BigEndian)?"BIG":"LITTLE", Tag);

    fp = fopen(argv[1],"rt");

    if (fp==((void*)0))
    {
      printf("\nError: Opening input file, %s.", argv[1]);
      return(0);
    }

    fOut = fopen( argv[2], "wb");

    if (fOut==((void*)0))
    {
      printf("\nError: Opening Output file, %s.", argv[2]);
      if(fp) fclose(fp);
      return(0);
    }

    RecStart = FALSE;

    AddressCurrent = 0xFFFFFFFFL;



    dumpfTell("Tag", Tag);

    binOut32(Tag);


    inputline=0;
    sts=TRUE;

    rlen = readline(fp,buff,sizeof buff);

    while( (sts) && (rlen != -1))
    {
        if (strlen(buff))
        {
            sts &= srecLine(buff);
            WaitDisplay();
        }
       rlen = readline(fp,buff,sizeof buff);
    }




    binRecEnd();

    if(fp) fclose(fp);
    if(fOut) fclose(fOut);

    return(1);
}
