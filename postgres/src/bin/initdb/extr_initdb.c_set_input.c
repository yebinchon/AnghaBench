
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* psprintf (char*,int ,char const*) ;
 int share_path ;

__attribute__((used)) static void
set_input(char **dest, const char *filename)
{
 *dest = psprintf("%s/%s", share_path, filename);
}
