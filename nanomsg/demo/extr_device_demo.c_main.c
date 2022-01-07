
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int client (char*,char*) ;
 int device (char*,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int server (char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main (int argc, char **argv)
{
    int rc;

    if ((argc == 3) && (strcmp (argv[1], "-s") == 0)) {
        rc = server (argv[2]);
    } else if ((argc == 4) && (strcmp (argv[1], "-d") == 0)) {
        rc = device (argv[2], argv[3]);
    } else if ((argc == 4) && (strcmp (argv[1], "-c") == 0)) {
        rc = client (argv[2], argv[3]);
    } else {
        fprintf (stderr, "Usage: %s -s <serverurl>\n", argv[0]);
        fprintf (stderr, "Usage: %s -d <serverurl> <clienturl>\n", argv[0]);
        fprintf (stderr, "Usage: %s -c <clienturl> <name>\n", argv[0]);
        exit (EXIT_FAILURE);
    }

    exit (rc == 0 ? EXIT_SUCCESS : EXIT_FAILURE);
}
