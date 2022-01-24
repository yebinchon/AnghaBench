#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long long save_registry_every_entries; int persons_expiration; size_t max_url_length; size_t max_name_length; void* enabled; int /*<<< orphan*/  registry_urls_root_index; void* machines; void* persons; int /*<<< orphan*/  lock; scalar_t__ machines_urls_memory; scalar_t__ persons_urls_memory; scalar_t__ urls_memory; scalar_t__ machines_memory; scalar_t__ persons_memory; scalar_t__ machines_urls_count; scalar_t__ persons_urls_count; scalar_t__ urls_count; scalar_t__ usages_count; scalar_t__ machines_count; scalar_t__ persons_count; void* registry_to_announce; void* hostname; void* cloud_base_url; void* verify_cookies_redirects; void* registry_domain; void* log_filename; void* pathname; void* db_filename; void* machine_guid_filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECTION_CLOUD ; 
 int /*<<< orphan*/  CONFIG_SECTION_REGISTRY ; 
 int /*<<< orphan*/  DICTIONARY_FLAGS ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 scalar_t__ WEB_SERVER_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,long long) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (void*,int) ; 
 char* netdata_configured_hostname ; 
 void* netdata_configured_varlib_dir ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__ registry ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  registry_url_compare ; 
 int /*<<< orphan*/  FUNC16 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,char*,void*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ web_server_mode ; 

int FUNC19(void) {
    char filename[FILENAME_MAX + 1];

    // registry enabled?
    if(web_server_mode != WEB_SERVER_MODE_NONE) {
        registry.enabled = FUNC2(CONFIG_SECTION_REGISTRY, "enabled", 0);
    }
    else {
        FUNC8("Registry is disabled - use the central netdata");
        FUNC4(CONFIG_SECTION_REGISTRY, "enabled", 0);
        registry.enabled = 0;
    }

    // pathnames
    FUNC17(filename, FILENAME_MAX, "%s/registry", netdata_configured_varlib_dir);
    registry.pathname = FUNC1(CONFIG_SECTION_REGISTRY, "registry db directory", filename);
    if(FUNC9(registry.pathname, 0770) == -1 && errno != EEXIST)
        FUNC7("Cannot create directory '%s'.", registry.pathname);

    // filenames
    FUNC17(filename, FILENAME_MAX, "%s/netdata.public.unique.id", registry.pathname);
    registry.machine_guid_filename = FUNC1(CONFIG_SECTION_REGISTRY, "netdata unique id file", filename);

    FUNC17(filename, FILENAME_MAX, "%s/registry.db", registry.pathname);
    registry.db_filename = FUNC1(CONFIG_SECTION_REGISTRY, "registry db file", filename);

    FUNC17(filename, FILENAME_MAX, "%s/registry-log.db", registry.pathname);
    registry.log_filename = FUNC1(CONFIG_SECTION_REGISTRY, "registry log file", filename);

    // configuration options
    registry.save_registry_every_entries = (unsigned long long)FUNC3(CONFIG_SECTION_REGISTRY, "registry save db every new entries", 1000000);
    registry.persons_expiration = FUNC3(CONFIG_SECTION_REGISTRY, "registry expire idle persons days", 365) * 86400;
    registry.registry_domain = FUNC1(CONFIG_SECTION_REGISTRY, "registry domain", "");
    registry.registry_to_announce = FUNC1(CONFIG_SECTION_REGISTRY, "registry to announce", "https://registry.my-netdata.io");
    registry.hostname = FUNC1(CONFIG_SECTION_REGISTRY, "registry hostname", netdata_configured_hostname);
    registry.verify_cookies_redirects = FUNC2(CONFIG_SECTION_REGISTRY, "verify browser cookies support", 1);

    // netdata.cloud configuration, if cloud_base_url == "", cloud functionality is disabled.
    registry.cloud_base_url = FUNC1(CONFIG_SECTION_CLOUD, "cloud base url", "https://netdata.cloud");

    FUNC16("NETDATA_REGISTRY_CLOUD_BASE_URL", registry.cloud_base_url, 1);
    FUNC16("NETDATA_REGISTRY_HOSTNAME", registry.hostname, 1);
    FUNC16("NETDATA_REGISTRY_URL", registry.registry_to_announce, 1);

    registry.max_url_length = (size_t)FUNC3(CONFIG_SECTION_REGISTRY, "max URL length", 1024);
    if(registry.max_url_length < 10) {
        registry.max_url_length = 10;
        FUNC5(CONFIG_SECTION_REGISTRY, "max URL length", (long long)registry.max_url_length);
    }

    registry.max_name_length = (size_t)FUNC3(CONFIG_SECTION_REGISTRY, "max URL name length", 50);
    if(registry.max_name_length < 10) {
        registry.max_name_length = 10;
        FUNC5(CONFIG_SECTION_REGISTRY, "max URL name length", (long long)registry.max_name_length);
    }

    // initialize entries counters
    registry.persons_count = 0;
    registry.machines_count = 0;
    registry.usages_count = 0;
    registry.urls_count = 0;
    registry.persons_urls_count = 0;
    registry.machines_urls_count = 0;

    // initialize memory counters
    registry.persons_memory = 0;
    registry.machines_memory = 0;
    registry.urls_memory = 0;
    registry.persons_urls_memory = 0;
    registry.machines_urls_memory = 0;

    // initialize locks
    FUNC10(&registry.lock);

    // create dictionaries
    registry.persons = FUNC6(DICTIONARY_FLAGS);
    registry.machines = FUNC6(DICTIONARY_FLAGS);
    FUNC0(&registry.registry_urls_root_index, registry_url_compare);

    // load the registry database
    if(registry.enabled) {
        FUNC15();
        FUNC11();
        FUNC14();

        if(FUNC18(FUNC13()))
            FUNC12();
    }

    return 0;
}