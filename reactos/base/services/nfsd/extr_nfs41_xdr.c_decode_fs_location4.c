
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_8__ {char* address; } ;
typedef TYPE_1__ fs_location_server ;
struct TYPE_9__ {int server_count; int path; TYPE_1__* servers; } ;
typedef TYPE_2__ fs_location4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS41_HOSTNAME_LEN ;
 int ZeroMemory (TYPE_1__*,int) ;
 int decode_pathname4 (int *,int *) ;
 int free (TYPE_1__*) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int xdr_bytes (int *,char**,int*,int) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t decode_fs_location4(
    XDR *xdr,
    fs_location4 *location)
{
    fs_location_server *arr;
    char *address;
    u_int32_t i, count, len;


    if (!xdr_u_int32_t(xdr, &count))
        return FALSE;


    if (count == 0) {
        free(location->servers);
        arr = ((void*)0);
    } else if (count != location->server_count) {
        arr = realloc(location->servers, count * sizeof(fs_location_server));
        if (arr == ((void*)0))
            return FALSE;
        ZeroMemory(arr, count * sizeof(fs_location_server));
    } else {
        arr = location->servers;
    }

    location->servers = arr;
    location->server_count = count;

    for (i = 0; i < count; i++) {
        len = NFS41_HOSTNAME_LEN;
        address = arr[i].address;
        if (!xdr_bytes(xdr, &address, &len, NFS41_HOSTNAME_LEN)) {
            free(arr);
            return FALSE;
        }
        arr[i].address[len] = '\0';
    }

    return decode_pathname4(xdr, &location->path);
}
