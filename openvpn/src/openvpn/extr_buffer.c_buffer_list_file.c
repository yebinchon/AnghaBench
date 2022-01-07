
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_list {int dummy; } ;
typedef int FILE ;


 struct buffer_list* buffer_list_new (int ) ;
 int buffer_list_push (struct buffer_list*,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int * platform_fopen (char const*,char*) ;

struct buffer_list *
buffer_list_file(const char *fn, int max_line_len)
{
    FILE *fp = platform_fopen(fn, "r");
    struct buffer_list *bl = ((void*)0);

    if (fp)
    {
        char *line = (char *) malloc(max_line_len);
        if (line)
        {
            bl = buffer_list_new(0);
            while (fgets(line, max_line_len, fp) != ((void*)0))
            {
                buffer_list_push(bl, line);
            }
            free(line);
        }
        fclose(fp);
    }
    return bl;
}
