
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _UC (int ) ;
 int isspace (int ) ;

__attribute__((used)) static int allws(const char *cp)
{
    while (*cp)
        if (!isspace(_UC(*cp++)))
            return 0;
    return 1;
}
