
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static bool
is_extension_control_filename(const char *filename)
{
 const char *extension = strrchr(filename, '.');

 return (extension != ((void*)0)) && (strcmp(extension, ".control") == 0);
}
