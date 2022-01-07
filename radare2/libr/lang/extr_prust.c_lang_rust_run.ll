; ModuleID = '/home/carl/AnghaBench/radare2/libr/lang/extr_prust.c_lang_rust_run.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/lang/extr_prust.c_lang_rust_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"_tmp.rs\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [744 x i8] c"use std::ffi::CStr;\0Aextern {\0A        pub fn r_core_cmd_str(core: *const u8, s: *const u8) -> *const u8;\0A        pub fn free (ptr: *const u8);\0A}\0A\0Apub struct R2;\0A\0A#[allow(dead_code)]\0Aimpl R2 {\0A        fn cmdstr(&self, c: *const u8, str: &str) -> String {\0A                unsafe {\0A                        let ptr = r_core_cmd_str(c, str.as_ptr()) as *const i8;\0A                        let c_str = CStr::from_ptr(ptr).to_string_lossy().into_owned();\0A                        free (ptr as *const u8);\0A                        String::from (c_str)\0A                }\0A        }\0A}\0A\0A#[no_mangle]\0A#[allow(unused_variables)]\0A#[allow(unused_unsafe)]\0Apub extern fn entry(core: *const u8) {\0A        let r2 = R2;\0A        unsafe { /* because core is external */\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"        }\0A}\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Cannot open _tmp.rs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @lang_rust_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lang_rust_run(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32* @r_sandbox_fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([744 x i8], [744 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @fputs(i8* %14, i32* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @fputs(i8* %17, i32* %18)
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @fputs(i8* %20, i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @fclose(i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @lang_rust_file(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @r_file_rm(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %30

28:                                               ; preds = %3
  %29 = call i32 @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %13
  ret i32 1
}

declare dso_local i32* @r_sandbox_fopen(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @lang_rust_file(i32*, i8*) #1

declare dso_local i32 @r_file_rm(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
