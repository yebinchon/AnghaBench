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
typedef  enum network_transport { ____Placeholder_network_transport } network_transport ;
struct TYPE_2__ {int ssl_enabled; char* inter; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ *,int) ; 
 TYPE_1__ settings ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,char const*,scalar_t__) ; 
 char* FUNC9 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC10(int port, enum network_transport transport,
                          FILE *portnumber_file) {
    bool ssl_enabled = false;

#ifdef TLS
    const char *notls = "notls";
    ssl_enabled = settings.ssl_enabled;
#endif

    if (settings.inter == NULL) {
        return FUNC3(settings.inter, port, transport, portnumber_file, ssl_enabled);
    } else {
        // tokenize them and bind to each one of them..
        char *b;
        int ret = 0;
        char *list = FUNC6(settings.inter);

        if (list == NULL) {
            FUNC0(stderr, "Failed to allocate memory for parsing server interface string\n");
            return 1;
        }
        for (char *p = FUNC9(list, ";,", &b);
            p != NULL;
            p = FUNC9(NULL, ";,", &b)) {
            int the_port = port;
#ifdef TLS
            ssl_enabled = settings.ssl_enabled;
            // "notls" option is valid only when memcached is run with SSL enabled.
            if (strncmp(p, notls, strlen(notls)) == 0) {
                if (!settings.ssl_enabled) {
                    fprintf(stderr, "'notls' option is valid only when SSL is enabled\n");
                    return 1;
                }
                ssl_enabled = false;
                p += strlen(notls) + 1;
            }
#endif

            char *h = NULL;
            if (*p == '[') {
                // expecting it to be an IPv6 address enclosed in []
                // i.e. RFC3986 style recommended by RFC5952
                char *e = FUNC4(p, ']');
                if (e == NULL) {
                    FUNC0(stderr, "Invalid IPV6 address: \"%s\"", p);
                    FUNC1(list);
                    return 1;
                }
                h = ++p; // skip the opening '['
                *e = '\0';
                p = ++e; // skip the closing ']'
            }

            char *s = FUNC4(p, ':');
            if (s != NULL) {
                // If no more semicolons - attempt to treat as port number.
                // Otherwise the only valid option is an unenclosed IPv6 without port, until
                // of course there was an RFC3986 IPv6 address previously specified -
                // in such a case there is no good option, will just send it to fail as port number.
                if (FUNC4(s + 1, ':') == NULL || h != NULL) {
                    *s = '\0';
                    ++s;
                    if (!FUNC2(s, &the_port)) {
                        FUNC0(stderr, "Invalid port number: \"%s\"", s);
                        FUNC1(list);
                        return 1;
                    }
                }
            }

            if (h != NULL)
                p = h;

            if (FUNC5(p, "*") == 0) {
                p = NULL;
            }
            ret |= FUNC3(p, the_port, transport, portnumber_file, ssl_enabled);
        }
        FUNC1(list);
        return ret;
    }
}