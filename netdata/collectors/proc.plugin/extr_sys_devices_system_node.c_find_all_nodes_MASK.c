#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {int dummy; } ;
struct node {struct node* next; void* numastat_filename; struct node* name; } ;
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 struct node* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct node*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 char* netdata_configured_host_prefix ; 
 struct node* numa_root ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC9 (char*,struct stat*) ; 
 void* FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 

__attribute__((used)) static int FUNC12() {
    int numa_node_count = 0;
    char name[FILENAME_MAX + 1];
    FUNC8(name, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/devices/system/node");
    char *dirname = FUNC2("plugin:proc:/sys/devices/system/node", "directory to monitor", name);

    DIR *dir = FUNC6(dirname);
    if(!dir) {
        FUNC3("Cannot read NUMA node directory '%s'", dirname);
        return 0;
    }

    struct dirent *de = NULL;
    while((de = FUNC7(dir))) {
        if(de->d_type != DT_DIR)
            continue;

        if(FUNC11(de->d_name, "node", 4) != 0)
            continue;

        if(!FUNC5(de->d_name[4]))
            continue;

        numa_node_count++;

        struct node *m = FUNC0(1, sizeof(struct node));
        m->name = FUNC10(de->d_name);

        struct stat st;

        FUNC8(name, FILENAME_MAX, "%s/%s/numastat", dirname, de->d_name);
        if(FUNC9(name, &st) == -1) {
            FUNC4(m->name);
            FUNC4(m);
            continue;
        }

        m->numastat_filename = FUNC10(name);

        m->next = numa_root;
        numa_root = m;
    }

    FUNC1(dir);

    return numa_node_count;
}