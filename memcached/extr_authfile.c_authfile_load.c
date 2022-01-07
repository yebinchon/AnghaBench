
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef enum authfile_ret { ____Placeholder_authfile_ret } authfile_ret ;
struct TYPE_3__ {char* user; int ulen; char* pass; int plen; } ;
typedef TYPE_1__ auth_t ;
typedef int auth_entries ;
typedef int FILE ;


 int AUTHFILE_MALFORMED ;
 int AUTHFILE_MISSING ;
 int AUTHFILE_OK ;
 int AUTHFILE_OOM ;
 int AUTHFILE_OPENFAIL ;
 int MAX_ENTRIES ;
 int MAX_ENTRY_LEN ;
 char* calloc (int,int ) ;
 int entry_cnt ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 char* main_auth_data ;
 int main_auth_entries ;
 int memcpy (int ,TYPE_1__*,int) ;
 int stat (char const*,struct stat*) ;

enum authfile_ret authfile_load(const char *file) {
    struct stat sb;
    char *auth_data = ((void*)0);
    auth_t auth_entries[MAX_ENTRIES];

    if (stat(file, &sb) == -1) {
        return AUTHFILE_MISSING;
    }

    auth_data = calloc(1, sb.st_size);

    if (auth_data == ((void*)0)) {
        return AUTHFILE_OOM;
    }

    FILE *pwfile = fopen(file, "r");
    if (pwfile == ((void*)0)) {

        free(auth_data);
        return AUTHFILE_OPENFAIL;
    }

    char *auth_cur = auth_data;
    auth_t *entry_cur = auth_entries;
    int used = 0;

    while ((fgets(auth_cur, MAX_ENTRY_LEN, pwfile)) != ((void*)0)) {
        int x;
        int found = 0;

        for (x = 0; x < MAX_ENTRY_LEN; x++) {
            if (!found && auth_cur[x] == ':') {
                entry_cur->user = auth_cur;
                entry_cur->ulen = x;
                entry_cur->pass = &auth_cur[x+1];
                found = 1;
            } else if (found) {

                if (auth_cur[x] == '\n' ||
                    auth_cur[x] == '\r' ||
                    auth_cur[x] == '\0') {
                    entry_cur->plen = x - (entry_cur->ulen + 1);
                    break;
                }
            }
        }


        if (!found) {
            (void)fclose(pwfile);
            free(auth_data);
            return AUTHFILE_MALFORMED;
        }


        if (++used == MAX_ENTRIES) {
            break;
        }

        if (auth_cur[x] == '\0')
            break;

        auth_cur += x;
        entry_cur++;
    }



    if (main_auth_data != ((void*)0)) {
        free(main_auth_data);
    }

    entry_cnt = used;
    main_auth_data = auth_data;
    memcpy(main_auth_entries, auth_entries, sizeof(auth_entries));

    (void)fclose(pwfile);

    return AUTHFILE_OK;
}
