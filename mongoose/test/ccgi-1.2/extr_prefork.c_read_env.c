
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fread (char*,int,int,int ) ;
 int free (char*) ;
 char getc (int ) ;
 scalar_t__ isdigit (int) ;
 scalar_t__ malloc (int) ;
 int stdin ;

__attribute__((used)) static char **
read_env(void) {
    char **env;
    char *buf, *p;
    int i, k, len;



    for (len = 0; isdigit(k = getc(stdin)); ) {
        len = len * 10 + k - '0';
    }
    if (k != ':' || len < 4) {
        return 0;
    }



    buf = (char *) malloc(len);
    if (fread(buf, 1, len, stdin) != len || getc(stdin) != ',') {
        free(buf);
        return 0;
    }



    for (i = k = 0; i < len; i++) {
        if (buf[i] == 0 && (++k & 1)) {
            buf[i] = '=';
        }
    }



    k = k / 2 + 1;
    env = (char **) malloc(k * sizeof(*env));
    p = buf;
    for (i = k = 0; i < len; i++) {
        if (buf[i] == 0) {
            env[k++] = p;
            p = buf + i + 1;
        }
    }
    env[k] = 0;
    return env;
}
