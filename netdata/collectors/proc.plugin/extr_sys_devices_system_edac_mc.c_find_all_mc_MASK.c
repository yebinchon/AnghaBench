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
struct mc {struct mc* next; struct mc* name; void* ue_count_filename; void* ce_count_filename; } ;
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 struct mc* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mc*) ; 
 scalar_t__ FUNC5 (char) ; 
 struct mc* mc_root ; 
 char* netdata_configured_host_prefix ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC9 (char*,struct stat*) ; 
 void* FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12() {
    char name[FILENAME_MAX + 1];
    FUNC8(name, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/devices/system/edac/mc");
    char *dirname = FUNC2("plugin:proc:/sys/devices/system/edac/mc", "directory to monitor", name);

    DIR *dir = FUNC6(dirname);
    if(FUNC11(!dir)) {
        FUNC3("Cannot read ECC memory errors directory '%s'", dirname);
        return;
    }

    struct dirent *de = NULL;
    while((de = FUNC7(dir))) {
        if(de->d_type == DT_DIR && de->d_name[0] == 'm' && de->d_name[1] == 'c' && FUNC5(de->d_name[2])) {
            struct mc *m = FUNC0(1, sizeof(struct mc));
            m->name = FUNC10(de->d_name);

            struct stat st;

            FUNC8(name, FILENAME_MAX, "%s/%s/ce_count", dirname, de->d_name);
            if(FUNC9(name, &st) != -1)
                m->ce_count_filename = FUNC10(name);

            FUNC8(name, FILENAME_MAX, "%s/%s/ue_count", dirname, de->d_name);
            if(FUNC9(name, &st) != -1)
                m->ue_count_filename = FUNC10(name);

            if(!m->ce_count_filename && !m->ue_count_filename) {
                FUNC4(m->name);
                FUNC4(m);
            }
            else {
                m->next = mc_root;
                mc_root = m;
            }
        }
    }

    FUNC1(dir);
}