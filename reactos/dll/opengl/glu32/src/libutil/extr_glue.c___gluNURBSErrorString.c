
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const** __gluNurbsErrors ;

const unsigned char *__gluNURBSErrorString( int errnum )
{
    return __gluNurbsErrors[errnum];
}
