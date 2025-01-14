
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PpcOfwPutChar (char) ;
 int ofw_child (int) ;
 int ofw_getprop (int,char*,char*,int) ;
 int ofw_peer (int) ;
 int printf (char*,int,...) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;

int PpcFindDevice( int depth, int parent, char *devname, int *nth ) {
    static char buf[256];
    int next = 0;
    int gotname = 0;
    int match = 0;
    int i;

    next = ofw_child( parent );



    gotname = ofw_getprop(parent, "name", buf, 256);



    match = !strncmp(buf, devname, strlen(devname));

    if( !nth && match ) return parent;

    for( i = 0; i < depth; i++ ) PpcOfwPutChar( ' ' );

    if( depth == 1 ) {
    if( gotname > 0 ) {
        printf( "%c Name: %s\n", match ? '*' : ' ', buf );
    } else {
        printf( "- No name attribute for %x\n", parent );
    }
    }

    while( !match && next ) {
        i = PpcFindDevice( depth+1, next, devname, nth );
    if( i ) return i;
        next = ofw_peer( next );
    }

    return 0;
}
