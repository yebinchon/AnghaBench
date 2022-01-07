
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLang ;
typedef int FILE ;


 int eprintf (char*) ;
 int fclose (int *) ;
 int fputs (char const*,int *) ;
 int lang_rust_file (int *,char*) ;
 int r_file_rm (char*) ;
 int * r_sandbox_fopen (char*,char*) ;

__attribute__((used)) static int lang_rust_run(RLang *lang, const char *code, int len) {
 FILE *fd = r_sandbox_fopen ("_tmp.rs", "w");
 if (fd) {
  const char *rust_header = "use std::ffi::CStr;\n" "extern {\n" "        pub fn r_core_cmd_str(core: *const u8, s: *const u8) -> *const u8;\n" "        pub fn free (ptr: *const u8);\n" "}\n" "\n" "pub struct R2;\n" "\n" "#[allow(dead_code)]\n" "impl R2 {\n" "        fn cmdstr(&self, c: *const u8, str: &str) -> String {\n" "                unsafe {\n" "                        let ptr = r_core_cmd_str(c, str.as_ptr()) as *const i8;\n" "                        let c_str = CStr::from_ptr(ptr).to_string_lossy().into_owned();\n" "                        free (ptr as *const u8);\n" "                        String::from (c_str)\n" "                }\n" "        }\n" "}\n" "\n" "#[no_mangle]\n" "#[allow(unused_variables)]\n" "#[allow(unused_unsafe)]\n" "pub extern fn entry(core: *const u8) {\n" "        let r2 = R2;\n" "        unsafe { /* because core is external */\n";
  const char *rust_footer = "        }\n" "}\n";


  fputs (rust_header, fd);
  fputs (code, fd);
  fputs (rust_footer, fd);
  fclose (fd);
  lang_rust_file (lang, "_tmp.rs");
  r_file_rm ("_tmp.rs");
 } else eprintf ("Cannot open _tmp.rs\n");
 return 1;
}
