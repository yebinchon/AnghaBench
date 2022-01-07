
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHUT_RDWR ;
 int close (int) ;
 int main_socket ;
 int shutdown (int,int ) ;

__attribute__((used)) static void sigint_handler(int signal_number __attribute__((unused)))
{
    if (main_socket < 0)
        return;

    shutdown((int)main_socket, SHUT_RDWR);
    close((int)main_socket);

    main_socket = -1;
}
