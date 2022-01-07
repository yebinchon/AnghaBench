
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int JSON_OBJECT ;

__attribute__((used)) static bool tag_is_valid(unsigned int tag)
{
 return ( tag <= JSON_OBJECT);
}
