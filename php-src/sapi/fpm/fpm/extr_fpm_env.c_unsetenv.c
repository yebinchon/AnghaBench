
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** environ ;
 int * getenv (char const*) ;
 scalar_t__ nvmatch (char const*,int *) ;

void unsetenv(const char *name)
{
 if(getenv(name) != ((void*)0)) {
  int ct = 0;
  int del = 0;

  while(environ[ct] != ((void*)0)) {
   if (nvmatch(name, environ[ct]) != 0) del=ct;
   { ct++; }
  }

  environ[del] = environ[ct-1];
  environ[ct-1] = ((void*)0);
 }
}
