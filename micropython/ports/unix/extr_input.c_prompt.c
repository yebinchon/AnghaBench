
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 char* fgets (char*,int,int ) ;
 int fputs (char*,int ) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int stdin ;
 int stdout ;
 int strlen (char*) ;

char *prompt(char *p) {

    static char buf[256];
    fputs(p, stdout);
    char *s = fgets(buf, sizeof(buf), stdin);
    if (!s) {
        return ((void*)0);
    }
    int l = strlen(buf);
    if (buf[l - 1] == '\n') {
        buf[l - 1] = 0;
    } else {
        l++;
    }
    char *line = malloc(l);
    memcpy(line, buf, l);
    return line;
}
