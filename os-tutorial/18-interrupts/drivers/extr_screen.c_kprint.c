
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprint_at (char*,int,int) ;

void kprint(char *message) {
    kprint_at(message, -1, -1);
}
