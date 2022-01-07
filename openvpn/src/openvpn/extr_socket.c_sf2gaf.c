
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int const GETADDR_RANDOMIZE ;
 unsigned int const SF_HOST_RANDOMIZE ;

__attribute__((used)) static unsigned int
sf2gaf(const unsigned int getaddr_flags,
       const unsigned int sockflags)
{
    if (sockflags & SF_HOST_RANDOMIZE)
    {
        return getaddr_flags | GETADDR_RANDOMIZE;
    }
    else
    {
        return getaddr_flags;
    }
}
