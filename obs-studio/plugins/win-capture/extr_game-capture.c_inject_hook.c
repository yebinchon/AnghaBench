
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {int process_is_64bit; } ;


 int bfree (char*) ;
 int check_file_integrity (struct game_capture*,char*,char*) ;
 int create_inject_process (struct game_capture*,char*,char const*) ;
 int hook_direct (struct game_capture*,char*) ;
 int info (char*,...) ;
 char* obs_module_file (char const*) ;
 scalar_t__ use_anticheat (struct game_capture*) ;

__attribute__((used)) static inline bool inject_hook(struct game_capture *gc)
{
 bool matching_architecture;
 bool success = 0;
 const char *hook_dll;
 char *inject_path;
 char *hook_path;

 if (gc->process_is_64bit) {
  hook_dll = "graphics-hook64.dll";
  inject_path = obs_module_file("inject-helper64.exe");
 } else {
  hook_dll = "graphics-hook32.dll";
  inject_path = obs_module_file("inject-helper32.exe");
 }

 hook_path = obs_module_file(hook_dll);

 if (!check_file_integrity(gc, inject_path, "inject helper")) {
  goto cleanup;
 }
 if (!check_file_integrity(gc, hook_path, "graphics hook")) {
  goto cleanup;
 }




 matching_architecture = !gc->process_is_64bit;


 if (matching_architecture && !use_anticheat(gc)) {
  info("using direct hook");
  success = hook_direct(gc, hook_path);
 } else {
  info("using helper (%s hook)",
       use_anticheat(gc) ? "compatibility" : "direct");
  success = create_inject_process(gc, inject_path, hook_dll);
 }

cleanup:
 bfree(inject_path);
 bfree(hook_path);
 return success;
}
