
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int char_left_gc (char*,int ) ;
 size_t char_right_gc (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static char *trim_whitespace_in_place(char *buffer)
{
 buffer += char_left_gc(buffer, strlen(buffer));
 buffer[char_right_gc(buffer, strlen(buffer))] = '\0';
 return buffer;
}
