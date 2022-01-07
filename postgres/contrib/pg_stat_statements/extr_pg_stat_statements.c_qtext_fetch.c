
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;



__attribute__((used)) static char *
qtext_fetch(Size query_offset, int query_len,
   char *buffer, Size buffer_size)
{

 if (buffer == ((void*)0))
  return ((void*)0);

 if (query_len < 0 ||
  query_offset + query_len >= buffer_size)
  return ((void*)0);

 if (buffer[query_offset + query_len] != '\0')
  return ((void*)0);

 return buffer + query_offset;
}
