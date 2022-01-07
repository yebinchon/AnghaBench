; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_php_variables.c_php_startup_auto_globals.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_php_variables.c_php_startup_auto_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"_GET\00", align 1
@php_auto_globals_create_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"_POST\00", align 1
@php_auto_globals_create_post = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"_COOKIE\00", align 1
@php_auto_globals_create_cookie = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"_SERVER\00", align 1
@auto_globals_jit = common dso_local global i32 0, align 4
@php_auto_globals_create_server = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"_ENV\00", align 1
@php_auto_globals_create_env = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"_REQUEST\00", align 1
@php_auto_globals_create_request = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"_FILES\00", align 1
@php_auto_globals_create_files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_startup_auto_globals() #0 {
  %1 = call i32 @zend_string_init_interned(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 1)
  %2 = load i32, i32* @php_auto_globals_create_get, align 4
  %3 = call i32 @zend_register_auto_global(i32 %1, i32 0, i32 %2)
  %4 = call i32 @zend_string_init_interned(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5, i32 1)
  %5 = load i32, i32* @php_auto_globals_create_post, align 4
  %6 = call i32 @zend_register_auto_global(i32 %4, i32 0, i32 %5)
  %7 = call i32 @zend_string_init_interned(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7, i32 1)
  %8 = load i32, i32* @php_auto_globals_create_cookie, align 4
  %9 = call i32 @zend_register_auto_global(i32 %7, i32 0, i32 %8)
  %10 = call i32 @zend_string_init_interned(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7, i32 1)
  %11 = load i32, i32* @auto_globals_jit, align 4
  %12 = call i32 @PG(i32 %11)
  %13 = load i32, i32* @php_auto_globals_create_server, align 4
  %14 = call i32 @zend_register_auto_global(i32 %10, i32 %12, i32 %13)
  %15 = call i32 @zend_string_init_interned(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 1)
  %16 = load i32, i32* @auto_globals_jit, align 4
  %17 = call i32 @PG(i32 %16)
  %18 = load i32, i32* @php_auto_globals_create_env, align 4
  %19 = call i32 @zend_register_auto_global(i32 %15, i32 %17, i32 %18)
  %20 = call i32 @zend_string_init_interned(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8, i32 1)
  %21 = load i32, i32* @auto_globals_jit, align 4
  %22 = call i32 @PG(i32 %21)
  %23 = load i32, i32* @php_auto_globals_create_request, align 4
  %24 = call i32 @zend_register_auto_global(i32 %20, i32 %22, i32 %23)
  %25 = call i32 @zend_string_init_interned(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6, i32 1)
  %26 = load i32, i32* @php_auto_globals_create_files, align 4
  %27 = call i32 @zend_register_auto_global(i32 %25, i32 0, i32 %26)
  ret void
}

declare dso_local i32 @zend_register_auto_global(i32, i32, i32) #1

declare dso_local i32 @zend_string_init_interned(i8*, i32, i32) #1

declare dso_local i32 @PG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
