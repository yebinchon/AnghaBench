; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_func_interceptors.c_phar_intercept_functions_shutdown.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_func_interceptors.c_phar_intercept_functions_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fopen = common dso_local global i32 0, align 4
@file_get_contents = common dso_local global i32 0, align 4
@is_file = common dso_local global i32 0, align 4
@is_dir = common dso_local global i32 0, align 4
@opendir = common dso_local global i32 0, align 4
@file_exists = common dso_local global i32 0, align 4
@fileperms = common dso_local global i32 0, align 4
@fileinode = common dso_local global i32 0, align 4
@filesize = common dso_local global i32 0, align 4
@fileowner = common dso_local global i32 0, align 4
@filegroup = common dso_local global i32 0, align 4
@fileatime = common dso_local global i32 0, align 4
@filemtime = common dso_local global i32 0, align 4
@filectime = common dso_local global i32 0, align 4
@filetype = common dso_local global i32 0, align 4
@is_writable = common dso_local global i32 0, align 4
@is_readable = common dso_local global i32 0, align 4
@is_executable = common dso_local global i32 0, align 4
@lstat = common dso_local global i32 0, align 4
@stat = common dso_local global i32 0, align 4
@readfile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phar_intercept_functions_shutdown() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @fopen, align 4
  %4 = call i32 @PHAR_RELEASE(i32 %3)
  %5 = load i32, i32* @file_get_contents, align 4
  %6 = call i32 @PHAR_RELEASE(i32 %5)
  %7 = load i32, i32* @is_file, align 4
  %8 = call i32 @PHAR_RELEASE(i32 %7)
  %9 = load i32, i32* @is_dir, align 4
  %10 = call i32 @PHAR_RELEASE(i32 %9)
  %11 = load i32, i32* @opendir, align 4
  %12 = call i32 @PHAR_RELEASE(i32 %11)
  %13 = load i32, i32* @file_exists, align 4
  %14 = call i32 @PHAR_RELEASE(i32 %13)
  %15 = load i32, i32* @fileperms, align 4
  %16 = call i32 @PHAR_RELEASE(i32 %15)
  %17 = load i32, i32* @fileinode, align 4
  %18 = call i32 @PHAR_RELEASE(i32 %17)
  %19 = load i32, i32* @filesize, align 4
  %20 = call i32 @PHAR_RELEASE(i32 %19)
  %21 = load i32, i32* @fileowner, align 4
  %22 = call i32 @PHAR_RELEASE(i32 %21)
  %23 = load i32, i32* @filegroup, align 4
  %24 = call i32 @PHAR_RELEASE(i32 %23)
  %25 = load i32, i32* @fileatime, align 4
  %26 = call i32 @PHAR_RELEASE(i32 %25)
  %27 = load i32, i32* @filemtime, align 4
  %28 = call i32 @PHAR_RELEASE(i32 %27)
  %29 = load i32, i32* @filectime, align 4
  %30 = call i32 @PHAR_RELEASE(i32 %29)
  %31 = load i32, i32* @filetype, align 4
  %32 = call i32 @PHAR_RELEASE(i32 %31)
  %33 = load i32, i32* @is_writable, align 4
  %34 = call i32 @PHAR_RELEASE(i32 %33)
  %35 = load i32, i32* @is_readable, align 4
  %36 = call i32 @PHAR_RELEASE(i32 %35)
  %37 = load i32, i32* @is_executable, align 4
  %38 = call i32 @PHAR_RELEASE(i32 %37)
  %39 = load i32, i32* @lstat, align 4
  %40 = call i32 @PHAR_RELEASE(i32 %39)
  %41 = load i32, i32* @stat, align 4
  %42 = call i32 @PHAR_RELEASE(i32 %41)
  %43 = load i32, i32* @readfile, align 4
  %44 = call i32 @PHAR_RELEASE(i32 %43)
  store i32 0, i32* %2, align 4
  ret void
}

declare dso_local i32 @PHAR_RELEASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
