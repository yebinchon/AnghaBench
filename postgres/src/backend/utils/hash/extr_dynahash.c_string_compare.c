
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;


 int strncmp (char const*,char const*,scalar_t__) ;

__attribute__((used)) static int
string_compare(const char *key1, const char *key2, Size keysize)
{
 return strncmp(key1, key2, keysize - 1);
}
