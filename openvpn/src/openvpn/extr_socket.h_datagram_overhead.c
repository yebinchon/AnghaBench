
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int PROTO_N ;
 int* proto_overhead ;

__attribute__((used)) static inline int
datagram_overhead(int proto)
{
    ASSERT(proto >= 0 && proto < PROTO_N);
    return proto_overhead [proto];
}
