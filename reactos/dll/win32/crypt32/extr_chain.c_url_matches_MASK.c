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
typedef  char WCHAR ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  CERT_TRUST_INVALID_NAME_CONSTRAINTS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static BOOL FUNC7(LPCWSTR constraint, LPCWSTR name,
 DWORD *trustErrorStatus)
{
    BOOL match = FALSE;

    FUNC1("%s, %s\n", FUNC2(constraint), FUNC2(name));

    if (!constraint)
        *trustErrorStatus |= CERT_TRUST_INVALID_NAME_CONSTRAINTS;
    else if (!name)
        ; /* no match */
    else
    {
        LPCWSTR colon, authority_end, at, hostname = NULL;
        /* The maximum length for a hostname is 254 in the DNS, see RFC 1034 */
        WCHAR hostname_buf[255];

        /* RFC 5280: only the hostname portion of the URL is compared.  From
         * section 4.2.1.10:
         * "For URIs, the constraint applies to the host part of the name.
         *  The constraint MUST be specified as a fully qualified domain name
         *  and MAY specify a host or a domain."
         * The format for URIs is in RFC 2396.
         *
         * First, remove any scheme that's present. */
        colon = FUNC5(name, ':');
        if (colon && *(colon + 1) == '/' && *(colon + 2) == '/')
            name = colon + 3;
        /* Next, find the end of the authority component.  (The authority is
         * generally just the hostname, but it may contain a username or a port.
         * Those are removed next.)
         */
        authority_end = FUNC5(name, '/');
        if (!authority_end)
            authority_end = FUNC5(name, '?');
        if (!authority_end)
            authority_end = name + FUNC6(name);
        /* Remove any port number from the authority.  The userinfo portion
         * of an authority may contain a colon, so stop if a userinfo portion
         * is found (indicated by '@').
         */
        for (colon = authority_end; colon >= name && *colon != ':' &&
         *colon != '@'; colon--)
            ;
        if (*colon == ':')
            authority_end = colon;
        /* Remove any username from the authority */
        if ((at = FUNC5(name, '@')))
            name = at;
        /* Ignore any path or query portion of the URL. */
        if (*authority_end)
        {
            if (authority_end - name < FUNC0(hostname_buf))
            {
                FUNC4(hostname_buf, name,
                 (authority_end - name) * sizeof(WCHAR));
                hostname_buf[authority_end - name] = 0;
                hostname = hostname_buf;
            }
            /* else: Hostname is too long, not a match */
        }
        else
            hostname = name;
        if (hostname)
            match = FUNC3(constraint, hostname);
    }
    return match;
}