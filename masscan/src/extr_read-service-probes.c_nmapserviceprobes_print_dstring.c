
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ contains_char (char const*,size_t,int) ;
 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
nmapserviceprobes_print_dstring(FILE *fp, const char *string, size_t length, int delimiter)
{
    size_t i;



    if (contains_char(string, length, delimiter)) {
        static const char *delimiters = "|/\"'#*+-!@$%^&()_=";

        for (i=0; delimiters[i]; i++) {
            delimiter = delimiters[i];
            if (!contains_char(string, length, delimiter))
                break;
        }
    }


    fprintf(fp, "%c", delimiter);


    for (i=0; i<length; i++) {
        char c = string[i];
        fprintf(fp, "%c", c);
    }


    fprintf(fp, "%c", delimiter);

}
