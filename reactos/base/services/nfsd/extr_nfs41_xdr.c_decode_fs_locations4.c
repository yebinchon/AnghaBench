
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {int location_count; int * locations; int path; } ;
typedef TYPE_1__ fs_locations4 ;
typedef int fs_location4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int ZeroMemory (int *,int) ;
 int decode_fs_location4 (int *,int *) ;
 int decode_pathname4 (int *,int *) ;
 int free (int *) ;
 int * realloc (int *,int) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t decode_fs_locations4(
    XDR *xdr,
    fs_locations4 *locations)
{
    u_int32_t i, count;
    fs_location4 *arr;

    if (!decode_pathname4(xdr, &locations->path))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &count))
        return FALSE;


    if (count == 0) {
        free(locations->locations);
        arr = ((void*)0);
    } else if (count != locations->location_count) {
        arr = realloc(locations->locations, count * sizeof(fs_location4));
        if (arr == ((void*)0))
            return FALSE;
        ZeroMemory(arr, count * sizeof(fs_location4));
    } else {
        arr = locations->locations;
    }

    locations->locations = arr;
    locations->location_count = count;

    for (i = 0; i < count; i++) {
        if (!decode_fs_location4(xdr, &arr[i])) {
            free(arr);
            return FALSE;
        }
    }
    return TRUE;
}
