#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp ;
struct TYPE_4__ {int nkey; scalar_t__ nbytes; scalar_t__ exptime; struct TYPE_4__* next; } ;
typedef  TYPE_1__ item ;

/* Variables and functions */
 unsigned int COLD_LRU ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int KEY_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__** heads ; 
 int /*<<< orphan*/ * lru_locks ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ process_started ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (char*,int,char*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

char *FUNC8(const unsigned int slabs_clsid, const unsigned int limit, unsigned int *bytes) {
    unsigned int memlimit = 2 * 1024 * 1024;   /* 2MB max response size */
    char *buffer;
    unsigned int bufcurr;
    item *it;
    unsigned int len;
    unsigned int shown = 0;
    char key_temp[KEY_MAX_LENGTH + 1];
    char temp[512];
    unsigned int id = slabs_clsid;
    id |= COLD_LRU;

    FUNC4(&lru_locks[id]);
    it = heads[id];

    buffer = FUNC2((size_t)memlimit);
    if (buffer == 0) {
        FUNC5(&lru_locks[id]);
        return NULL;
    }
    bufcurr = 0;

    while (it != NULL && (limit == 0 || shown < limit)) {
        FUNC1(it->nkey <= KEY_MAX_LENGTH);
        if (it->nbytes == 0 && it->nkey == 0) {
            it = it->next;
            continue;
        }
        /* Copy the key since it may not be null-terminated in the struct */
        FUNC7(key_temp, FUNC0(it), it->nkey);
        key_temp[it->nkey] = 0x00; /* terminate */
        len = FUNC6(temp, sizeof(temp), "ITEM %s [%d b; %llu s]\r\n",
                       key_temp, it->nbytes - 2,
                       it->exptime == 0 ? 0 :
                       (unsigned long long)it->exptime + process_started);
        if (bufcurr + len + 6 > memlimit)  /* 6 is END\r\n\0 */
            break;
        FUNC3(buffer + bufcurr, temp, len);
        bufcurr += len;
        shown++;
        it = it->next;
    }

    FUNC3(buffer + bufcurr, "END\r\n", 6);
    bufcurr += 5;

    *bytes = bufcurr;
    FUNC5(&lru_locks[id]);
    return buffer;
}