
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Masscan {int dummy; } ;
typedef int line ;
typedef scalar_t__ errno_t ;
typedef int dir ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 scalar_t__ fopen_s (int **,char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 int getcwd (char*,int) ;
 scalar_t__ ispunct (char) ;
 int masscan_set_parameter (struct Masscan*,char*,char*) ;
 int perror (char const*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int trim (char*,int) ;

void
masscan_read_config_file(struct Masscan *masscan, const char *filename)
{
    FILE *fp;
    errno_t err;
    char line[65536];

    err = fopen_s(&fp, filename, "rt");
    if (err) {
        char dir[512];
        perror(filename);
        getcwd(dir, sizeof(dir));
        fprintf(stderr, "cwd = %s\n", dir);
        return;
    }

    while (fgets(line, sizeof(line), fp)) {
        char *name;
        char *value;

        trim(line, sizeof(line));

        if (ispunct(line[0] & 0xFF) || line[0] == '\0')
            continue;

        name = line;
        value = strchr(line, '=');
        if (value == ((void*)0))
            continue;
        *value = '\0';
        value++;
        trim(name, sizeof(line));
        trim(value, sizeof(line));

        masscan_set_parameter(masscan, name, value);
    }

    fclose(fp);
}
