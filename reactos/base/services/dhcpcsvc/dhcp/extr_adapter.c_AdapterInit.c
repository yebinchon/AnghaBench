
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AdapterList ;
 int InitializeListHead (int *) ;
 int WSAStartup (int,int *) ;
 int wsd ;

void AdapterInit() {
    WSAStartup(0x0101,&wsd);

    InitializeListHead( &AdapterList );
}
