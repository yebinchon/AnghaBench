
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGI_varlist ;


 int * CGI_decode_query (int *,char*) ;
 int atoi (char const*) ;
 int fread (char*,int,int,int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ mymalloc (int) ;
 int * read_multipart (int *,char const*) ;
 int stdin ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

CGI_varlist *
CGI_get_post(CGI_varlist *v, const char *template) {
    const char *env;
    char *buf;
    int len;

    if ((env = getenv("CONTENT_TYPE")) != 0 &&
        strncasecmp(env, "application/x-www-form-urlencoded", 33) == 0 &&
        (env = getenv("CONTENT_LENGTH")) != 0 &&
        (len = atoi(env)) > 0)
    {
        buf = (char *) mymalloc(len + 1);
        if (fread(buf, 1, len, stdin) == len) {
            buf[len] = 0;
            v = CGI_decode_query(v, buf);
        }
        free(buf);
    }
    else {
        v = read_multipart(v, template);
    }
    return v;
}
