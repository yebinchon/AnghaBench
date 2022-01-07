
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calculated_number ;
typedef int BUFFER ;


 int CALCULATED_NUMBER_FORMAT ;
 int buffer_strcat (int *,char*) ;
 int isinf (int ) ;
 int isnan (int ) ;
 int snprintfz (char*,int,int ,int ) ;
 int strlen (char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void print_parsed_as_constant(BUFFER *out, calculated_number n) {
    if(unlikely(isnan(n))) {
        buffer_strcat(out, "nan");
        return;
    }

    if(unlikely(isinf(n))) {
        buffer_strcat(out, "inf");
        return;
    }

    char b[100+1], *s;
    snprintfz(b, 100, CALCULATED_NUMBER_FORMAT, n);

    s = &b[strlen(b) - 1];
    while(s > b && *s == '0') {
        *s ='\0';
        s--;
    }

    if(s > b && *s == '.')
        *s = '\0';

    buffer_strcat(out, b);
}
