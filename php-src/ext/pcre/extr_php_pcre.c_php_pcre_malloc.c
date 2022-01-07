
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCRE2_SIZE ;


 void* pemalloc (int ,int) ;

__attribute__((used)) static void *php_pcre_malloc(PCRE2_SIZE size, void *data)
{
 void *p = pemalloc(size, 1);
 return p;
}
