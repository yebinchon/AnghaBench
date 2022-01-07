
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int r_cons_readpush (char*,int) ;
 int r_str_unescape (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int cmd_pipein(void *user, const char *input) {
 char *buf = strdup (input);
 int len = r_str_unescape (buf);
 r_cons_readpush (buf, len);
 free (buf);
 return 0;
}
