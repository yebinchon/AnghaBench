
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PcapFile {unsigned int linktype; int byte_order; int * fp; int filename; } ;
typedef int FILE ;


 int CAPFILE_LITTLEENDIAN ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*) ;
 int fwrite (char*,int,int,int *) ;
 scalar_t__ malloc (int) ;
 int memset (struct PcapFile*,int ,int) ;
 int perror (char const*) ;
 int snprintf (int ,int,char*,char const*) ;
 int stderr ;

struct PcapFile *pcapfile_openwrite(const char *capfilename, unsigned linktype)
{
    char buf[] =
            "\xd4\xc3\xb2\xa1\x02\x00\x04\x00"
            "\x00\x00\x00\x00\x00\x00\x00\x00"
            "\xff\xff\x00\x00\x69\x00\x00\x00";
    FILE *fp;

    buf[20] = (char)(linktype>>0);
    buf[21] = (char)(linktype>>8);


    fp = fopen(capfilename, "wb");
    if (fp == ((void*)0)) {
        fprintf(stderr, "Could not open capture file\n");
        perror(capfilename);
        return 0;
    }


    if (fwrite(buf, 1, 24, fp) != 24) {
        fprintf(stderr, "Could not write capture file header\n");
        perror(capfilename);
        fclose(fp);
        return 0;
    }

    {
        struct PcapFile *capfile = 0;
        capfile = (struct PcapFile*)malloc(sizeof(*capfile));
        if (capfile == ((void*)0))
            exit(1);
        memset(capfile,0,sizeof(*capfile));

        snprintf(capfile->filename, sizeof(capfile->filename),
                 "%s", capfilename);

        capfile->fp = fp;
        capfile->byte_order = CAPFILE_LITTLEENDIAN;
        capfile->linktype = linktype;
        return capfile;
    }

}
