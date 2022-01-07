
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct interface_info {int rfdesc; } ;
struct hardware {int dummy; } ;
typedef int ssize_t ;


 size_t INT_MAX ;
 int WSAEMSGSIZE ;
 int recvfrom (int ,char*,int,int ,struct sockaddr*,int*) ;

ssize_t receive_packet(struct interface_info *ip,
                       unsigned char *packet_data,
                       size_t packet_len,
                       struct sockaddr_in *dest,
                       struct hardware *hardware ) {
    int recv_addr_size = sizeof(*dest);
    int result;

    if (packet_len > INT_MAX)
        return WSAEMSGSIZE;

    result =
        recvfrom (ip -> rfdesc, (char *)packet_data, (int)packet_len, 0,
                  (struct sockaddr *)dest, &recv_addr_size );
    return result;
}
