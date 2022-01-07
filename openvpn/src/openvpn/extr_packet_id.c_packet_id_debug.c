
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_id_rec {int dummy; } ;
struct packet_id_net {int dummy; } ;


 int check_debug_level (int) ;
 int packet_id_debug_print (int,struct packet_id_rec const*,struct packet_id_net const*,char const*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void
packet_id_debug(int msglevel,
                const struct packet_id_rec *p,
                const struct packet_id_net *pin,
                const char *message,
                int value)
{






}
