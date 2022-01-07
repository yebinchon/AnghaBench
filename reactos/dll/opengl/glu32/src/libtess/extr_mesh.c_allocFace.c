
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLUface ;


 scalar_t__ memAlloc (int) ;

__attribute__((used)) static GLUface *allocFace()
{
   return (GLUface *)memAlloc( sizeof( GLUface ));
}
