
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NmapServiceProbeList {unsigned int line_number; scalar_t__ filename; } ;
typedef int line ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 struct NmapServiceProbeList* nmapserviceprobes_new (char const*) ;
 int nmapserviceprobes_print (struct NmapServiceProbeList*,int ) ;
 int parse_line (struct NmapServiceProbeList*,char*) ;
 int perror (char const*) ;
 int stdout ;

struct NmapServiceProbeList *
nmapserviceprobes_read_file(const char *filename)
{
    FILE *fp;
    char line[32768];
    struct NmapServiceProbeList *result;




    fp = fopen(filename, "rt");
    if (fp == ((void*)0)) {
        perror(filename);
        return 0;
    }




    result = nmapserviceprobes_new(filename);




    while (fgets(line, sizeof(line), fp)) {


        result->line_number++;


        parse_line(result, line);
    }

    fclose(fp);
    result->filename = 0;
    result->line_number = (unsigned)~0;

    nmapserviceprobes_print(result, stdout);

    return result;
}
