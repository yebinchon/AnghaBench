
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;



const char *const *
PQsslAttributeNames(PGconn *conn)
{
 static const char *const result[] = {
  "library",
  "key_bits",
  "cipher",
  "compression",
  "protocol",
  ((void*)0)
 };

 return result;
}
