
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef scalar_t__ data ;


 scalar_t__ VARDATA (int *) ;
 scalar_t__ VARSIZE (int *) ;
 int pg_to_ascii (unsigned char*,unsigned char*,unsigned char*,int) ;

__attribute__((used)) static text *
encode_to_ascii(text *data, int enc)
{
 pg_to_ascii((unsigned char *) VARDATA(data),
    (unsigned char *) (data) + VARSIZE(data),
    (unsigned char *) VARDATA(data),
    enc);

 return data;
}
