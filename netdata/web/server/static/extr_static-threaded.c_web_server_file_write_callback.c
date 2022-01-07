
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POLLINFO ;


 int error (char*) ;

__attribute__((used)) static int web_server_file_write_callback(POLLINFO *pi, short int *events) {
    (void)pi;
    (void)events;

    error("Writing to web files is not supported!");

    return -1;
}
