
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char CHAR ;
typedef int BOOL ;


 scalar_t__ isspace (char) ;

__attribute__((used)) static
BOOL
IsDelimiter(
    CHAR c)
{
    return (c == '/' || c == '=' || c == '\0' || isspace(c));
}
