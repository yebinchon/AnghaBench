
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int alSourceStop (int ) ;
 int source ;
 int unqueue_buffers (struct ao*) ;

__attribute__((used)) static void reset(struct ao *ao)
{
    alSourceStop(source);
    unqueue_buffers(ao);
}
