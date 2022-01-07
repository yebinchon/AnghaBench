
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int insource ;
typedef int inprg ;
typedef int expectfile_stdout ;
typedef int expectfile_stderr ;
typedef int expectfile_source ;
typedef int cmd ;
typedef int _stringlist ;
typedef scalar_t__ PID_TYPE ;


 scalar_t__ INVALID_PID ;
 int MAXPGPATH ;
 char* _ (char*) ;
 int add_stringlist_item (int **,char*) ;
 int ecpg_filter (char*,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 char* inputdir ;
 char* outputdir ;
 char* psprintf (char*,char*) ;
 int putenv (char*) ;
 int replace_string (char*,char*,char*) ;
 int snprintf (char*,int,char*,char const*,...) ;
 scalar_t__ spawn_process (char*) ;
 int stderr ;
 char* strdup (char const*) ;
 int unsetenv (char*) ;

__attribute__((used)) static PID_TYPE
ecpg_start_test(const char *testname,
    _stringlist **resultfiles,
    _stringlist **expectfiles,
    _stringlist **tags)
{
 PID_TYPE pid;
 char inprg[MAXPGPATH];
 char insource[MAXPGPATH];
 char *outfile_stdout,
    expectfile_stdout[MAXPGPATH];
 char *outfile_stderr,
    expectfile_stderr[MAXPGPATH];
 char *outfile_source,
    expectfile_source[MAXPGPATH];
 char cmd[MAXPGPATH * 3];
 char *testname_dash;
 char *appnameenv;

 snprintf(inprg, sizeof(inprg), "%s/%s", inputdir, testname);

 testname_dash = strdup(testname);
 replace_string(testname_dash, "/", "-");
 snprintf(expectfile_stdout, sizeof(expectfile_stdout),
    "%s/expected/%s.stdout",
    outputdir, testname_dash);
 snprintf(expectfile_stderr, sizeof(expectfile_stderr),
    "%s/expected/%s.stderr",
    outputdir, testname_dash);
 snprintf(expectfile_source, sizeof(expectfile_source),
    "%s/expected/%s.c",
    outputdir, testname_dash);





 outfile_stdout = strdup(expectfile_stdout);
 replace_string(outfile_stdout, "/expected/", "/results/");
 outfile_stderr = strdup(expectfile_stderr);
 replace_string(outfile_stderr, "/expected/", "/results/");
 outfile_source = strdup(expectfile_source);
 replace_string(outfile_source, "/expected/", "/results/");

 add_stringlist_item(resultfiles, outfile_stdout);
 add_stringlist_item(expectfiles, expectfile_stdout);
 add_stringlist_item(tags, "stdout");

 add_stringlist_item(resultfiles, outfile_stderr);
 add_stringlist_item(expectfiles, expectfile_stderr);
 add_stringlist_item(tags, "stderr");

 add_stringlist_item(resultfiles, outfile_source);
 add_stringlist_item(expectfiles, expectfile_source);
 add_stringlist_item(tags, "source");

 snprintf(insource, sizeof(insource), "%s.c", testname);
 ecpg_filter(insource, outfile_source);

 snprintf(inprg, sizeof(inprg), "%s/%s", inputdir, testname);

 snprintf(cmd, sizeof(cmd),
    "\"%s\" >\"%s\" 2>\"%s\"",
    inprg,
    outfile_stdout,
    outfile_stderr);

 appnameenv = psprintf("PGAPPNAME=ecpg/%s", testname_dash);
 putenv(appnameenv);

 pid = spawn_process(cmd);

 if (pid == INVALID_PID)
 {
  fprintf(stderr, _("could not start process for test %s\n"),
    testname);
  exit(2);
 }

 unsetenv("PGAPPNAME");
 free(appnameenv);

 free(testname_dash);
 free(outfile_stdout);
 free(outfile_stderr);
 free(outfile_source);

 return pid;
}
