
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* sanitize_filename (int *,char const*) ;
 int talloc_free (char*) ;
 char* talloc_strdup_append (char*,char*) ;

__attribute__((used)) static void append_filename(char **s, const char *f)
{
    char *append = sanitize_filename(((void*)0), f);
    *s = talloc_strdup_append(*s, append);
    talloc_free(append);
}
