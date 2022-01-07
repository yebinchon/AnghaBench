
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* ssl_nomem ;

__attribute__((used)) static void
SSLerrfree(char *buf)
{
 if (buf != ssl_nomem)
  free(buf);
}
