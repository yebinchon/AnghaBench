
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PcapFile {unsigned int byte_order; int linktype; int * fp; int filename; } ;
typedef int newname ;
typedef int linkspec ;
typedef int FILE ;


 unsigned int CAPFILE_BIGENDIAN ;
 unsigned int CAPFILE_LITTLEENDIAN ;
 scalar_t__ ENOENT ;
 unsigned int PCAP16 (unsigned int,unsigned char*) ;
 unsigned int PCAP32 (unsigned int,unsigned char*) ;
 int SEEK_END ;
 scalar_t__ errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (unsigned char*,int,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int memset (struct PcapFile*,int ,int) ;
 struct PcapFile* pcapfile_openwrite (char const*,unsigned int) ;
 int perror (char const*) ;
 size_t snprintf (char*,int,char*,...) ;
 int stderr ;
 char const* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strstr (char const*,char*) ;

struct PcapFile *pcapfile_openappend(const char *capfilename, unsigned linktype)
{
    struct PcapFile *capfile;
    unsigned char buf[24];
    unsigned byte_order;
    unsigned file_linktype;
    FILE *fp;




    fp = fopen(capfilename, "ab+");
    if (fp == ((void*)0) && errno == ENOENT) {
        return pcapfile_openwrite(capfilename, linktype);
    }
    if (fp == ((void*)0)) {
        fprintf(stderr, "Could not open capture file to append frame\n");
        perror(capfilename);
        return pcapfile_openappend(capfilename, linktype);
    }


    if (fread(buf, 1, 24, fp) != 24) {
        fprintf(stderr, "Error reading capture file header\n");
        perror(capfilename);
        fclose(fp);
        return pcapfile_openappend(capfilename, linktype);
    }





    if (fseek(fp, 0, SEEK_END) != 0) {
        fprintf(stderr, "Could not seek to end of capture file\n");
        perror(capfilename);
        fclose(fp);
        return 0;
    }



    switch (buf[0]<<24 | buf[1]<<16 | buf[2]<<8 | buf[3]) {
    case 0xa1b2c3d4: byte_order = CAPFILE_BIGENDIAN; break;
    case 0xd4c3b2a1: byte_order = CAPFILE_LITTLEENDIAN; break;
    default:
        fprintf(stderr, "%s: unknown byte-order in cap file\n", capfilename);
        fclose(fp);
        return pcapfile_openappend(capfilename, linktype);
    }



    {
        unsigned major = PCAP16(byte_order, buf+4);
        unsigned minor = PCAP16(byte_order, buf+6);

        if (major != 2 || minor != 4)
            fprintf(stderr, "%s: unknown version %u.%u\n", capfilename, major, minor);
    }


    file_linktype = PCAP32(byte_order, buf+20);
    if (linktype != file_linktype) {




        char linkspec[32];
        size_t linkspec_length;
        char newname[sizeof(capfile->filename)];
        size_t i;

        fclose(fp);

        linkspec_length = snprintf(linkspec, sizeof(linkspec), "-linktype%d", linktype);

        if (strstr(capfilename, linkspec) || strlen(capfilename) + linkspec_length + 1 > sizeof(newname)) {



            fprintf(stderr, "Giving up on appending %u-type frames onto a %u-type file\n",
                    linktype, file_linktype);
            return 0;
        }

        if (strchr(capfilename, '.'))
            i = strchr(capfilename, '.')-capfilename;
        else
            i = strlen(capfilename);

        memcpy(newname, capfilename, i);
        memcpy(newname+i, linkspec, linkspec_length);
        memcpy(newname+i+linkspec_length, capfilename+i, strlen(capfilename+i)+1);

        return pcapfile_openappend(newname, linktype);
    }



    {

        capfile = (struct PcapFile*)malloc(sizeof(*capfile));
        if (capfile == ((void*)0))
            exit(1);
        memset(capfile,0,sizeof(*capfile));
        capfile->byte_order = byte_order;
        snprintf(capfile->filename, sizeof(capfile->filename),
                 "%s", capfilename);
        capfile->fp = fp;
        capfile->byte_order = byte_order;
        capfile->linktype = linktype;
    }

    return capfile;
}
