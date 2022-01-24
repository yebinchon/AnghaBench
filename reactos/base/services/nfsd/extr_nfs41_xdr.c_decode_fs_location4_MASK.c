#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct TYPE_8__ {char* address; } ;
typedef  TYPE_1__ fs_location_server ;
struct TYPE_9__ {int server_count; int /*<<< orphan*/  path; TYPE_1__* servers; } ;
typedef  TYPE_2__ fs_location4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int NFS41_HOSTNAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char**,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool_t FUNC6(
    XDR *xdr,
    fs_location4 *location)
{
    fs_location_server *arr;
    char *address;
    u_int32_t i, count, len;

    /* decode the number of servers */
    if (!FUNC5(xdr, &count))
        return FALSE;

    /* allocate the fs_location_server array */
    if (count == 0) {
        FUNC2(location->servers);
        arr = NULL;
    } else if (count != location->server_count) {
        arr = FUNC3(location->servers, count * sizeof(fs_location_server));
        if (arr == NULL)
            return FALSE;
        FUNC0(arr, count * sizeof(fs_location_server));
    } else {
        arr = location->servers;
    }

    location->servers = arr;
    location->server_count = count;

    for (i = 0; i < count; i++) {
        len = NFS41_HOSTNAME_LEN;
        address = arr[i].address;
        if (!FUNC4(xdr, &address, &len, NFS41_HOSTNAME_LEN)) {
            FUNC2(arr);
            return FALSE;
        }
        arr[i].address[len] = '\0';
    }

    return FUNC1(xdr, &location->path);
}