
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_stream_errno ;

int *__errno() {
    return &mp_stream_errno;
}
