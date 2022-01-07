
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*,char const*) ;

__attribute__((used)) static void usage(char const *prg)
{
 pr_err("usage: %s [-h] [-o] [-s <size of pipe>]\n", prg);
}
