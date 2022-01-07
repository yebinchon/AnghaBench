
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int internal_load_library (char*) ;
 scalar_t__ strlen (char*) ;

void
RestoreLibraryState(char *start_address)
{
 while (*start_address != '\0')
 {
  internal_load_library(start_address);
  start_address += strlen(start_address) + 1;
 }
}
