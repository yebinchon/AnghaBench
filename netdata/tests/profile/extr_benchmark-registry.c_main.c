
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* guid; } ;
typedef TYPE_1__ PERSON ;


 int config_set_boolean (char*,char*,int) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int registry_free () ;
 int registry_init () ;
 TYPE_1__* registry_request_access (char*,char*,char*,char*,int ) ;
 int registry_save () ;
 int stderr ;
 int test1 (int,char**) ;
 int time (int *) ;

int main(int argc, char **argv) {
 config_set_boolean("registry", "enabled", 1);


 test1(argc, argv);
 exit(0);

 (void)argc;
 (void)argv;


 PERSON *p1, *p2;

 fprintf(stderr, "\n\nINITIALIZATION\n");

 registry_init();

 int i = 2;

 fprintf(stderr, "\n\nADDING ENTRY\n");
 p1 = registry_request_access("2c95abd0-1542-11e6-8c66-00508db7e9c9", "7c173980-145c-11e6-b86f-00508db7e9c1", "http://localhost:19999/", "test", time(((void*)0)));

 if(0)
 while(i--) {



  p1 = registry_request_access(((void*)0), "7c173980-145c-11e6-b86f-00508db7e9c1", "http://localhost:19999/", "test", time(((void*)0)));




  p1 = registry_request_access(p1->guid, "7c173980-145c-11e6-b86f-00508db7e9c1", "http://127.0.0.1:19999/", "test", time(((void*)0)));




  p1 = registry_request_access(p1->guid, "7c173980-145c-11e6-b86f-00508db7e9c1", "http://my.server:19999/", "test", time(((void*)0)));




  p1 = registry_request_access(p1->guid, "7c173980-145c-11e6-b86f-00508db7e9c1", "http://my.server:19999/", "test", time(((void*)0)));




  p2 = registry_request_access(((void*)0), "7c173980-145c-11e6-b86f-00508db7e9c3", "http://localhost:19999/", "test", time(((void*)0)));




  p2 = registry_request_access(p2->guid, "7c173980-145c-11e6-b86f-00508db7e9c3", "http://localhost:19999/", "test", time(((void*)0)));
 }

 fprintf(stderr, "\n\nSAVE\n");
 registry_save();

 fprintf(stderr, "\n\nCLEANUP\n");
 registry_free();
 return 0;
}
