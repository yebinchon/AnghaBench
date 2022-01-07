
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;

void consumeInterfaceName(const char *name) {
    HeapFree( GetProcessHeap(), 0, (char *)name );
}
