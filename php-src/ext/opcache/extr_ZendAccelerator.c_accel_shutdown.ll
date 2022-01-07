; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_accel_shutdown.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_accel_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@accel_blacklist = common dso_local global i32 0, align 4
@enabled = common dso_local global i32 0, align 4
@accel_startup_ok = common dso_local global i32 0, align 4
@preload_script = common dso_local global i32 0, align 4
@file_cache_only = common dso_local global i64 0, align 8
@zend_post_shutdown_cb = common dso_local global i32 0, align 4
@orig_post_shutdown_cb = common dso_local global i32 0, align 4
@accel_post_shutdown = common dso_local global i32 0, align 4
@accelerator_orig_compile_file = common dso_local global i32 0, align 4
@zend_compile_file = common dso_local global i32 0, align 4
@ini_directives = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"include_path\00", align 1
@orig_include_path_on_modify = common dso_local global i32 0, align 4
@accel_globals_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @accel_shutdown() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = call i32 (...) @zend_optimizer_shutdown()
  %4 = call i32 @zend_accel_blacklist_shutdown(i32* @accel_blacklist)
  %5 = load i32, i32* @enabled, align 4
  %6 = call i32 @ZCG(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @accel_startup_ok, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %0
  br label %36

12:                                               ; preds = %8
  %13 = load i32, i32* @preload_script, align 4
  %14 = call i64 @ZCSG(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (...) @preload_shutdown()
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i64, i64* @file_cache_only, align 8
  store i64 %19, i64* %2, align 8
  %20 = call i32 (...) @accel_reset_pcre_cache()
  %21 = load i64, i64* %2, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @zend_post_shutdown_cb, align 4
  store i32 %24, i32* @orig_post_shutdown_cb, align 4
  %25 = load i32, i32* @accel_post_shutdown, align 4
  store i32 %25, i32* @zend_post_shutdown_cb, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @accelerator_orig_compile_file, align 4
  store i32 %27, i32* @zend_compile_file, align 4
  %28 = load i32, i32* @ini_directives, align 4
  %29 = call i32 @EG(i32 %28)
  %30 = call %struct.TYPE_3__* @zend_hash_str_find_ptr(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %1, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @orig_include_path_on_modify, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %11, %32, %26
  ret void
}

declare dso_local i32 @zend_optimizer_shutdown(...) #1

declare dso_local i32 @zend_accel_blacklist_shutdown(i32*) #1

declare dso_local i32 @ZCG(i32) #1

declare dso_local i64 @ZCSG(i32) #1

declare dso_local i32 @preload_shutdown(...) #1

declare dso_local i32 @accel_reset_pcre_cache(...) #1

declare dso_local %struct.TYPE_3__* @zend_hash_str_find_ptr(i32, i8*, i32) #1

declare dso_local i32 @EG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
