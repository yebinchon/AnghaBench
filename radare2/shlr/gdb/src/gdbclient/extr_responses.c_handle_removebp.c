
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;


 int send_ack (int *) ;

int handle_removebp(libgdbr_t *g) {
 return send_ack (g);
}
