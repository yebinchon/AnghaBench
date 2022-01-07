
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUFFER ;


 int * buffer_create (int) ;
 int buffer_free (int *) ;
 int buffer_sprintf (int *,char const*,char*,char*,char*,char*) ;
 scalar_t__ buffer_strlen (int *) ;
 char* buffer_tostring (int *) ;
 int fprintf (int ,char*,...) ;
 int snprintfz (char*,int,char const*,char*,char*,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char*) ;

int unit_test_buffer() {
    BUFFER *wb = buffer_create(1);
    char string[2048 + 1];
    char final[9000 + 1];
    int i;

    for(i = 0; i < 2048; i++)
        string[i] = (char)((i % 24) + 'a');
    string[2048] = '\0';

    const char *fmt = "string1: %s\nstring2: %s\nstring3: %s\nstring4: %s";
    buffer_sprintf(wb, fmt, string, string, string, string);
    snprintfz(final, 9000, fmt, string, string, string, string);

    const char *s = buffer_tostring(wb);

    if(buffer_strlen(wb) != strlen(final) || strcmp(s, final) != 0) {
        fprintf(stderr, "\nbuffer_sprintf() is faulty.\n");
        fprintf(stderr, "\nstring  : %s (length %zu)\n", string, strlen(string));
        fprintf(stderr, "\nbuffer  : %s (length %zu)\n", s, buffer_strlen(wb));
        fprintf(stderr, "\nexpected: %s (length %zu)\n", final, strlen(final));
        buffer_free(wb);
        return -1;
    }

    fprintf(stderr, "buffer_sprintf() works as expected.\n");
    buffer_free(wb);
    return 0;
}
