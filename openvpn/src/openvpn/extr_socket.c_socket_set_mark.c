
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mark ;


 int M_WARN ;
 int SOL_SOCKET ;
 int SO_MARK ;
 int msg (int ,char*,int) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;

__attribute__((used)) static inline void
socket_set_mark(int sd, int mark)
{






}
