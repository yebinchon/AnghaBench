
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pefree (void*,int) ;

__attribute__((used)) static void php_pcre_free(void *block, void *data)
{
 pefree(block, 1);
}
