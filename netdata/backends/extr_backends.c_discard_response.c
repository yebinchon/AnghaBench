
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sample ;
typedef int BUFFER ;


 int buffer_flush (int *) ;
 int buffer_strlen (int *) ;
 char* buffer_tostring (int *) ;
 int info (char*,int ,char const*,char*) ;
 int isprint (char) ;
 scalar_t__ unlikely (int) ;

int discard_response(BUFFER *b, const char *backend) {
    char sample[1024];
    const char *s = buffer_tostring(b);
    char *d = sample, *e = &sample[sizeof(sample) - 1];

    for(; *s && d < e ;s++) {
        char c = *s;
        if(unlikely(!isprint(c))) c = ' ';
        *d++ = c;
    }
    *d = '\0';

    info("BACKEND: received %zu bytes from %s backend. Ignoring them. Sample: '%s'", buffer_strlen(b), backend, sample);
    buffer_flush(b);
    return 0;
}
