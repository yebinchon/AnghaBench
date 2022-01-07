
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
typedef int sa_family_t ;




 int ASSERT (int ) ;
 int M_ERR ;
 int msg (int ,char*,int) ;

__attribute__((used)) static inline int
af_addr_size(sa_family_t af)
{
    switch (af)
    {
        case 129: return sizeof(struct sockaddr_in);

        case 128: return sizeof(struct sockaddr_in6);

        default:





            return 0;
    }
}
