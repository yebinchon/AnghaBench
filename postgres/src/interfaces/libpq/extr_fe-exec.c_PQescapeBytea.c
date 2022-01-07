
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* PQescapeByteaInternal (int *,unsigned char const*,size_t,size_t*,int ,int) ;
 int static_std_strings ;

unsigned char *
PQescapeBytea(const unsigned char *from, size_t from_length, size_t *to_length)
{
 return PQescapeByteaInternal(((void*)0), from, from_length, to_length,
         static_std_strings,
         0 );
}
