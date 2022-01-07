
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int stdout ;

__attribute__((used)) static void preload_flush(void *server_context)
{
 fflush(stdout);
}
