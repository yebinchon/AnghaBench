
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUCCESS ;
 int fflush (int ) ;
 int stdout ;

__attribute__((used)) static int php_embed_deactivate(void)
{
 fflush(stdout);
 return SUCCESS;
}
